[#macro editConfigurationPage plan selectedTab titleKey descriptionKey='' description='' tools='' toolsContainer='div']
    <html>
    <head>
        [#if fn.isConfigurationReadOnly(plan)]
            [@ui.header pageKey="build.configuration.view.title.long" object=plan.name title=true /]
        [#else]
            [@ui.header pageKey="build.configuration.edit.title.long" object=plan.name title=true /]
        [/#if]
        <meta name="tab" content="${selectedTab}" />
    </head>
    <body>
        [#if tools?has_content]
            <${toolsContainer} class="floating-toolbar">
                ${tools}
            </${toolsContainer}>
        [/#if]
        [@ui.header pageKey=titleKey descriptionKey=descriptionKey description=description /]
        [#nested /]
    </body>
    </html>
[/#macro]