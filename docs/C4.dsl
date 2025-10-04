workspace "ProfileBuilder" "ProfileBuilder Diagrams" {

    !identifiers hierarchical

    model {
        u = person "User"
        ss = softwareSystem "ProfileBuilder Application" {
            client = container "Frontend" "MAUI Mobile Application"
            backend = container "Backend" ".NET" {
                userModule = component "User Module"
                resumeModule = component "Resume Module"
                jobApplicationModule = component "Job Application Module"
                reportsModule = component "Reports Module"
                
                userModule -> resumeModule "Emits events"
                resumeModule -> jobApplicationModule "Emits events"
                userModule -> reportsModule "Emits events"
                resumeModule -> reportsModule "Emits events"
                jobApplicationModule -> reportsModule "Emits events"
            }
            db = container "CouchDB Database" {
                tags "Database"
            }
        }
        gpt = softwareSystem "GPT Agent Model"

        u -> ss.client "Uses"
        ss.client -> ss.backend "Communicates with" "HTTPS"
        ss.backend -> ss.db "Reads from and writes to"
        ss.backend.resumeModule -> gpt "Uses"
    }

    views {
        systemContext ss "Diagram1" {
            include *
            autolayout lr
        }

        container ss "Diagram2" {
            include *
            autolayout lr
        }

        component ss.backend "Diagram3" {
            include *
            autolayout lr
        }

        styles {
            element "Element" {
                color #9a28f8
                stroke #9a28f8
                strokeWidth 7
                shape roundedbox
            }
            element "Person" {
                shape person
            }
            element "Database" {
                shape cylinder
            }
            element "Boundary" {
                strokeWidth 5
            }
            relationship "Relationship" {
                thickness 4
            }
        }
    }

    configuration {
        scope softwaresystem
    }

}