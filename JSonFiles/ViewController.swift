//
//  ViewController.swift
//  JsonFile
//
//  Created by my macbook on 17/2/22.
//

import UIKit
//1*//
class FirstHW: Codable{
    var glossary: Glossary?
}
class Glossary: Codable{
    var title: String? = nil
    var glossDiv: GlossDiv
enum CodingKeys: String, CodingKey {
    case glossDiv = "GlossDiv"
    }
}
class GlossDiv: Codable{
    var title: String? = nil
    var glossList: GlossList?
enum CodingKeys: String, CodingKey {
    case glossList = "GlossList"
   }
}
class GlossList: Codable{
    var glossEntry: GlossEntry
enum CodingKeys: String, CodingKey {
    case glossEntry = "GlossEntry"
   }
}
class GlossEntry: Codable {
    var id: String? = nil
    var sortAs: String? = nil
    var glossTerm: String? = nil
    var acronym: String? = nil
    var abbrev: String? = nil
    var glossDef: GlossDef?
    var glossSee: String? = nil
enum CodingKeys: String, CodingKey {
    case id = "iD"
    case sortAs = "SortAs"
    case glossTerm = "GlossTerm"
    case acronym = "Acronym"
    case abbrev = "Abbrev"
    case glossDef = "GlossDef"
    case glossSee = "GlossSee"
   }
}
class GlossDef: Codable{
    var para: String? = nil
    var glossSeeAlso: [String?]
enum CodingKeys: String, CodingKey {
    case para
    case glossSeeAlso = "GlossSeeAlso"
   }
}
//2*//
class FirstHW2: Codable{
    var menu: Menu?
    var id: String? = nil
    var value: String? = nil
}
class Menu: Codable{
    var popup: Popup?
}
class Popup: Codable{
    var menuitem: [Menuitem] = []
}
class Menuitem: Codable{
    var value: String? = nil
    var onClick: String? = nil
}
//3*//

class FirstHW3: Codable{
    var widget: Widget?
    var debug: String? = nil
}
class Widget: Codable{
    var window: Window?
    var image: Image?
    var text: Text?
}
class Window: Codable{
    var title: String? = nil
    var name: String? = nil
    var width: Int? = nil
    var height: Int? = nil
}
class Image: Codable{
    var src: String? = nil
    var name: String? = nil
    var hOffset: Int? = nil
    var vOffset: Int? = nil
    var alignment: String? = nil
}
class Text: Codable{
    var data: String? = nil
    var size: Int? = nil
    var style: String? = nil
    var name: String? = nil
    var hOffset: Int? = nil
    var vOffset: Int? = nil
    var alignment: String? = nil
    var onMouseUp: String? = nil
}
class FirstHW4: Codable{
    var webApp: WebApp
enum CodingKeys: String, CodingKey {
    case webApp = "web-app"
    }
}
class WebApp: Codable{
    var servlet: [Servlet] = []
    var servletMapping: ServletMapping
enum CodingKeys: String, CodingKey{
    case servletMapping = "servlet-mapping"
    }
}
class ServletMapping: Codable{
    var cofaxCDS: String? = nil
    var cofaxEmail: String? = nil
    var cofaxAdmin: String? = nil
    var fileServlet: String? = nil
    var cofaxTools: String? = nil
}
class Servlet: Codable {
    var servletName: String? = nil
    var servletClass: String? = nil
    var initParam: InitParam?
enum CodingKeys: String, CodingKey {
    case servletName = "servlet-name"
    case servletClass = "servlet-class"
    case initParam = "init-param"
    }
}
class InitParam: Codable {
    var configGlossaryInstallationAt: String? = nil
    var configGlossaryAdminEmail: String? = nil
    var configGlossaryPoweredBy: String? = nil
    var configGlossaryPoweredByIcon: String? = nil
    var configGlossaryStaticPath: String? = nil
    var templateProcessorClass: String? = nil
    var templateLoaderClass: String? = nil
    var templatePath: String? = nil
    var templateOverridePath: String? = nil
    var defaultListTemplate: String? = nil
    var defaultFileTemplate: String? = nil
    var useJSP: Bool?
    var jspListTemplate: String? = nil
    var jspFileTemplate: String? = nil
    var cachePackageTagsTrack: Int? = nil
    var cachePackageTagsStore: Int? = nil
    var cachePackageTagsRefresh: Int? = nil
    var cacheTemplatesTrack: Int? = nil
    var cacheTemplatesStore: Int? = nil
    var cacheTemplatesRefresh: Int? = nil
    var cachePagesTrack: Int? = nil
    var cachePagesStore: Int? = nil
    var cachePagesRefresh: Int? = nil
    var cachePagesDirtyRead: Int? = nil
    var searchEngineListTemplate: String? = nil
    var searchEngineFileTemplate: String? = nil
    var searchEngineRobotsDB: String? = nil
    var useDataStore: Bool?
    var dataStoreClass: String? = nil
    var redirectionClass: String? = nil
    var dataStoreName: String? = nil
    var dataStoreDriver: String? = nil
    var dataStoreURL: String? = nil
    var dataStoreUser: String? = nil
    var dataStorePassword: String? = nil
    var dataStoreTestQuery: String? = nil
    var dataStoreLogFile: String? = nil
    var dataStoreInitConns: Int? = nil
    var dataStoreMaxConns: Int? = nil
    var dataStoreConnUsageLimit: Int? = nil
    var dataStoreLogLevel: String? = nil
    var maxURLLength: Int? = nil
    var mailHost: String? = nil
    var mailHostOverride: String? = nil
    var log: Int? = nil
    var logLocation: String? = nil
    var logMaxSize: String? = nil
    var dataLog: Int? = nil
    var dataLogLocation: String? = nil
    var dataLogMaxSize: String? = nil
    var removePageCache: String? = nil
    var removeTemplateCache: String? = nil
    var fileTransferFolder: String? = nil
    var lookInContext: Int? = nil
    var adminGroupID: Int? = nil
    var betaServer: Bool?
enum CodingKeys: String, CodingKey {
    case configGlossaryInstallationAt = "configGlossary:installationAt"
    case configGlossaryAdminEmail = "configGlossary:adminEmail"
    case configGlossaryPoweredBy = "configGlossary:poweredBy"
    case configGlossaryPoweredByIcon = "configGlossary:poweredByIcon"
    case configGlossaryStaticPath = "configGlossary:staticPath"
    case searchEngineRobotsDB = "searchEngineRobotsDb"
    case dataStoreURL = "dataStoreUrl"
    case maxURLLength = "maxUrlLength"
    }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
var json1 = """

{
"glossary": {
"title": "example glossary",
 "GlossDiv": {
            "title": "S",
  "GlossList": {
  "GlossEntry": {
    "ID": "SGML",
     "SortAs": "SGML",
     "GlossTerm": "Standard Generalized Markup Language",
     "Acronym": "SGML",
     "Abbrev": "ISO 8879:1986",
     "GlossDef": {
                                               "para": "A meta-markup language, used to create markup languages such as DocBook.",
      "GlossSeeAlso": ["GML", "XML"]
                    },
      "GlossSee": "markup"
                }
            }
        }
    }
}
"""
var json2 = """

{
 "menu": {
      "id": "file",
      "value": "File",
      "popup": {
             "menuitem": [
                   {"value": "New", "onclick": "CreateNewDoc()"},
                   {"value": "Open", "onclick": "OpenDoc()"},
                   {"value": "Close", "onclick": "CloseDoc()"}
             ]
       }
   }
}
"""
var json3 = """

{
  "widget": {
    "debug": "on",
    "window": {
        "title": "Sample Konfabulator Widget",
        "name": "main_window",
        "width": 500,
        "height": 500
    },
    "image": {
        "src": "Images/Sun.png",
        "name": "sun1",
        "hOffset": 250,
        "vOffset": 250,
        "alignment": "center"
    },
    "text": {
        "data": "Click Here",
        "size": 36,
        "style": "bold",
        "name": "text1",
        "hOffset": 250,
        "vOffset": 100,
        "alignment": "center",
        "onMouseUp": "sun1.opacity = (sun1.opacity / 100) * 90;"
    }
  }
}
"""
var json4 = """

{"web-app": {
  "servlet": [
    {
      "servlet-name": "cofaxCDS",
      "servlet-class": "org.cofax.cds.CDSServlet",
      "init-param": {
        "configGlossary:installationAt": "Philadelphia, PA",
        "configGlossary:adminEmail": "ksm@pobox.com",
        "configGlossary:poweredBy": "Cofax",
        "configGlossary:poweredByIcon": "/images/cofax.gif",
        "configGlossary:staticPath": "/content/static",
        "templateProcessorClass": "org.cofax.WysiwygTemplate",
        "templateLoaderClass": "org.cofax.FilesTemplateLoader",
        "templatePath": "templates",
        "templateOverridePath": "",
        "defaultListTemplate": "listTemplate.htm",
        "defaultFileTemplate": "articleTemplate.htm",
        "useJSP": false,
        "jspListTemplate": "listTemplate.jsp",
        "jspFileTemplate": "articleTemplate.jsp",
        "cachePackageTagsTrack": 200,
        "cachePackageTagsStore": 200,
        "cachePackageTagsRefresh": 60,
        "cacheTemplatesTrack": 100,
        "cacheTemplatesStore": 50,
        "cacheTemplatesRefresh": 15,
        "cachePagesTrack": 200,
        "cachePagesStore": 100,
        "cachePagesRefresh": 10,
        "cachePagesDirtyRead": 10,
        "searchEngineListTemplate": "forSearchEnginesList.htm",
        "searchEngineFileTemplate": "forSearchEngines.htm",
        "searchEngineRobotsDb": "WEB-INF/robots.db",
        "useDataStore": true,
        "dataStoreClass": "org.cofax.SqlDataStore",
        "redirectionClass": "org.cofax.SqlRedirection",
        "dataStoreName": "cofax",
        "dataStoreDriver": "com.microsoft.jdbc.sqlserver.SQLServerDriver",
        "dataStoreUrl": "jdbc:microsoft:sqlserver://LOCALHOST:1433;DatabaseName=goon",
        "dataStoreUser": "sa",
        "dataStorePassword": "dataStoreTestQuery",
        "dataStoreTestQuery": "SET NOCOUNT ON;select test='test';",
        "dataStoreLogFile": "/usr/local/tomcat/logs/datastore.log",
        "dataStoreInitConns": 10,
        "dataStoreMaxConns": 100,
        "dataStoreConnUsageLimit": 100,
        "dataStoreLogLevel": "debug",
        "maxUrlLength": 500}},
    {
      "servlet-name": "cofaxEmail",
      "servlet-class": "org.cofax.cds.EmailServlet",
      "init-param": {
      "mailHost": "mail1",
      "mailHostOverride": "mail2"}},
    {
      "servlet-name": "cofaxAdmin",
      "servlet-class": "org.cofax.cds.AdminServlet"},

    {
      "servlet-name": "fileServlet",
      "servlet-class": "org.cofax.cds.FileServlet"},
    {
      "servlet-name": "cofaxTools",
      "servlet-class": "org.cofax.cms.CofaxToolsServlet",
      "init-param": {
        "templatePath": "toolstemplates/",
        "log": 1,
        "logLocation": "/usr/local/tomcat/logs/CofaxTools.log",
        "logMaxSize": "",
        "dataLog": 1,
        "dataLogLocation": "/usr/local/tomcat/logs/dataLog.log",
        "dataLogMaxSize": "",
        "removePageCache": "/content/admin/remove?cache=pages&id=",
        "removeTemplateCache": "/content/admin/remove?cache=templates&id=",
        "fileTransferFolder": "/usr/local/tomcat/webapps/content/fileTransferFolder",
        "lookInContext": 1,
        "adminGroupID": 4,
        "betaServer": true
     }
  }
],
  "servlet-mapping": {
    "cofaxCDS": "/",
    "cofaxEmail": "/cofaxutil/aemail/*",
    "cofaxAdmin": "/admin/*",
    "fileServlet": "/static/*",
    "cofaxTools": "/tools/*"
},
}}
"""
//1*//
        let model1 = try? JSONDecoder().decode(FirstHW.self, from: Data(json1.utf8))
 dump(model1)
//2*//
        let model2 = try? JSONDecoder().decode(FirstHW2.self, from: Data(json2.utf8))
dump(model2)
//3*//
        let model3 = try? JSONDecoder().decode(FirstHW3.self, from: Data(json3.utf8))
dump(model3)
//4*//
        let model4 = try? JSONDecoder().decode(FirstHW4.self, from: Data(json4.utf8))
dump(model4)

    }
}
