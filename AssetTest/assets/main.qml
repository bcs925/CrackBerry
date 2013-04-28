import bb.cascades 1.0

Page {
    Container {
        layout: DockLayout {
        }
        CustomStuff{}
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center

            Button {
                text: "Play"
            }
            Button {
                text: "Options"
            }
            Button {
                text: "Scores"
            }
            Button {
                text: "Help"
            }

        }

    }

}
