//
//  Data.swift
//  IPDC
//
//  Created by Tobias Conradi on 03.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class Data: NSObject {
	let speaker = [Speaker]()
	let talks = [Talk]()
	
	override init() {
		//TODO: init speaker and talks correctly
		var componements = NSDateComponents()
		componements.calendar = NSCalendar.currentCalendar()
		
		componements.year = 2014
		componements.month = 11
		componements.day = 17
		componements.hour = 9
		componements.minute = 0

		var startDate = componements.date!
		componements.hour += 1
		var endDate = componements.date!
		
		
		// MARK: - Talks
		let panel = Talk(title: "Keynote-Panel: Alles neu in der iPhone Welt", abstract: "Auf Apple's WWDC 2014 wurde das neue mobile Betriebssystem iOS 8 vorgestellt und mit Swift eine moderne und innovative Programmiersprache. Zur Eröffnung der IPDC 2014 stellen Ihnen die Experten die wichtigsten Neuerungen vor.\n\n - iOS 8: alles neu, Möglichkeiten aber auch Stolperfallen\n - Takt der iOS Updates immer schneller\n - Swift (oder doch das gute alte Objective-C?)\n - ganz neu: Apple Health, HomeKit, CloudKit, Adaptive UserInterface\n - Ausblick: Apple Watch", startDate: startDate, endDate: endDate)

		talks.append(panel)
		
		// MARK: 10:45
		componements.hour = 10
		componements.minute = 45
		startDate = componements.date!
		componements.hour += 1
		endDate = componements.date!
		
		
		let iOS8 = Talk(title: "iOS 8",
			abstract: "Auf der WWDC 2014 stellte Apple mit iOS 8 eines der größten Releases für Entwickler seit der Einführung des iPhone SDKs vor.\n\nDieser Vortrag bietet einen Überblick über die wichtigsten Neuerungen in iOS wie size classes, extensions und vieles mehr. (Bis November erwarten wir noch einige Neuigkeiten, auch diese werden eingebaut.)",
			startDate: startDate,
			endDate: endDate)
		talks.append(iOS8)
		
		let localization = Talk(
			title: "Gelungene App-Lokalisierung - das Umschiffen sprachlicher Untiefen",
			abstract: "Mit den App Stores sind viele Hürden für das globale Anbieten von Programmen überwunden. Nur eine ist noch verblieben: die eigentliche Bereitstellung von Apps in den jeweiligen Sprachen.\n\nWer sich für die Lokalisierung seiner App entscheidet, wird auf seinem Weg unweigerlich verschiedenste Hindernisse überwinden müssen. In diesem Vortrag möchten wir Techniken und Vorgehensweisen näher bringen, mit denen sich die gröbsten Stolperfallen bei der Umsetzung umschiffen lassen, damit weder der internationale User noch der Entwickler Schiffbruch erleiden.",
			startDate: startDate,
			endDate: endDate)
		talks.append(localization)
		
		// MARK: 11:45
		
		startDate = componements.date!
		componements.hour += 1
		endDate = componements.date!
		
		let iBeacon = Talk(title: "iBeacon Modelle und Einsatzmöglichkeiten",
			abstract: "Der Markenname iBeacon ist ein 2013 von Apple Inc. eingeführter, proprietärer Standard für Navigation in geschlossenen Räumen, basierend auf Bluetooth Low Energy (BLE). Ivo Wessel stellt in dieser Session die verschiedenen Modelle und Einsatzmöglichkeiten vor.",
			startDate: startDate,
			endDate: endDate)
		talks.append(iBeacon)
		
		let gamesSell = Talk(title: "Einführung in Entwicklung und Vertrieb von Mobile Indie Games",
		abstract: "Wir starten mit einer Nachbetrachtung der Entwicklung des Indie Games ... and then it rained, angefangen bei der ersten Idee, über die Konzeption, Entwicklung, die Veröffentlichung bis hin zur Post-­‐Release Phase.\n\nUnter anderem werden dabei folgende Fragen betrachtet:\n\nWelche Technologien und Werkzeuge kamen zum Einsatz?\nWie wurde Marketing und Pressearbeit gemacht?\nWie hat sich das Spiel verkauft und wie haben sich die Zahlen entwickelt?\nWas lief positiv und welche Fehler wurden gemacht?\nWas unterscheidet „Indie Game Development“ von der klassischen Spieleentwicklung großer Studios oder Publisher?\nAbschließend werfen wir einen Blick auf den gegenwärtigen Stand des Mobile Markts und diskutieren, wie und ob man als unabhängige Entwickler in Zukunft noch erfolgreich „Indie Games“ für mobile Märkte produzieren kann.", startDate: startDate, endDate: endDate)
		talks.append(gamesSell)
		
		componements.hour = 13
		componements.minute = 30
		startDate = componements.date!
		componements.hour += 1
		endDate = componements.date!
		
		let icloud = Talk(title: "iCloud vs Core Data: What could possibly go wrong?", abstract: "", startDate: startDate, endDate: endDate)
		talks.append(icloud)
		let gameDev = Talk(title: "Spiele-Entwicklung für iOS: Sprite Kit, Unity oder Cocos2D-x?", abstract: "", startDate: startDate, endDate: endDate)
		talks.append(gameDev)
		
		startDate = componements.date!
		componements.hour += 1
		endDate = componements.date!
		
		let maps = Talk(title: "Apple MapKit vs. Google Maps SDK ", abstract: "", startDate: startDate, endDate: endDate)
		talks.append(maps)
		let tests = Talk(title: "Automatisierte Akzeptanztests für iOS ", abstract: "", startDate: startDate, endDate: endDate)
		talks.append(tests)
		
		startDate = componements.date!
		componements.hour = 16
		componements.minute = 15
		endDate = componements.date!
		
		let google = Talk(title: "Bringing the Power of Google tech to iOS ", abstract: "", startDate: startDate, endDate: endDate)
		talks.append(google)
		let autolayout = Talk(title: "AutoLayout", abstract: "", startDate: startDate, endDate: endDate)
		talks.append(autolayout)
		
		componements.hour = 17
		componements.minute = 0
		startDate = componements.date!
		componements.hour += 1
		endDate = componements.date!
		let startup = Talk(title: "Von der Idee zum Startup", abstract: "", startDate: startDate, endDate: endDate)
		talks.append(startup)
		
		// MARK: - Speaker
		
		let hbohlmann = Speaker(name: "Holger Bohlmann",
			vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.",
			imageName: "Bohlmann-Holger_dwxspeakerdetail")
		speaker.append(hbohlmann)
		autolayout.speakers.append(hbohlmann)
		hbohlmann.talks = [autolayout]
		
		let gchbib = Speaker(name: "Gihad Chbib",
			vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.",
			imageName: "Chbib-Gihad_dwxspeakerdetail")
		speaker.append(gchbib)
		gameDev.speakers.append(gchbib)
		gchbib.talks = [gameDev]
		
		let tconradi = Speaker(name: "Tobias Conradi",
			vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.",
			imageName: "Conradi-Tobias_dwxspeakerdetail")
		speaker.append(tconradi)
		tconradi.talks = [panel,iOS8]
		panel.speakers.append(tconradi)
		iOS8.speakers.append(tconradi)

		
		let mengelhard = Speaker(name: "Marco Engelhard",
			vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.",
			imageName: "Engelhard-Marco_dwxspeakerdetail")
		speaker.append(mengelhard)
		mengelhard.talks = [startup]
		startup.speakers.append(mengelhard)
		
		let pfriese = Speaker(name: "Peter Friese",
			vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.",
			imageName: "Friese-Peter_dwxspeakerdetail");
		speaker.append(pfriese)
		pfriese.talks = [google]
		google.speakers.append(pfriese)
		
		let ogentz = Speaker(name: "Ortwin Gentz",
			vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.",
			imageName: "Gentz-Ortwin_dwxspeakerdetail")
		speaker.append(ogentz)
		ogentz.talks = [panel,maps]
		panel.speakers.append(ogentz)
		maps.speakers.append(ogentz)
		
		let sgünther = Speaker(name: "Sven Günther", vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.", imageName: "Guenther-Sven_dwxspeakerdetail")
		speaker.append(sgünther)
		sgünther.talks = [panel,tests]
		panel.speakers.append(sgünther)
		tests.speakers.append(sgünther)
		
		let ogurtschmann = Speaker(name: "Oliver Gurtschmann", vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.", imageName: "Gurtschmann-Oliver_dwxspeakerdetail")
		speaker.append(ogurtschmann)
		ogurtschmann.talks = [localization]
		localization.speakers.append(ogurtschmann)
		
		let phauke = Speaker(name: "Peter Hauke", vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.", imageName: "Hauke-Peter_dwxspeakerdetail")
		speaker.append(phauke)
		phauke.talks = [icloud]
		icloud.speakers.append(phauke)
		
		let dhelbig = Speaker(name: "Daniel Helbig", vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.", imageName: "Helbig-Daniel_dwxspeakerdetail")
		speaker.append(dhelbig)
		dhelbig.talks = [gamesSell]
		gamesSell.speakers.append(dhelbig)
		
		let ikasprzak = Speaker(name: "Ingo Kasprzak", vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.", imageName: "Kasprzak-Ingo_dwxspeakerdetail")
		speaker.append(ikasprzak)
		ikasprzak.talks = [icloud]
		icloud.speakers.append(ikasprzak)
		
		let flotze = Speaker(name: "Felix Lotze", vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.", imageName: "Lotze-Felix_dwxspeakerdetail")
		speaker.append(flotze)
		flotze.talks = [localization]
		localization.speakers.append(flotze)
		
		let tweese = Speaker(name: "Thomas Weese", vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.", imageName: "Weese-Thomas_dwxspeakerdetail")
		speaker.append(tweese)
		tweese.talks = [autolayout]
		autolayout.speakers.append(tweese)
		
		let iwessel = Speaker(name: "Iwo Wessel", vita: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu rutrum lacus, ut condimentum lorem. Etiam consequat vestibulum dolor ac gravida. Nam vel malesuada felis. Morbi vel aliquam elit. Nullam ullamcorper nibh sit amet imperdiet sagittis. Pellentesque nec molestie felis. Fusce eget suscipit lacus. Quisque ac iaculis urna. Vivamus sit amet neque at dui euismod consequat et ac erat. Morbi non est ut mi porttitor viverra quis eu nibh. Nulla semper aliquet sagittis. Vestibulum eget auctor massa.", imageName: "Wessel-Ivo_dwxspeakerdetail")
		speaker.append(iwessel)
		iwessel.talks = [panel, iBeacon]
		panel.speakers.append(iwessel)
		iBeacon.speakers.append(iwessel)
		
		super.init()
	}
}
