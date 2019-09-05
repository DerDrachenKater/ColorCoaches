ColorCoaches

Aufgabe aus dem Praktikum des Moduls "Software Ergonomie und Usability Engineering"

Entwerfen und Entwickeln von zwei unterschiedlichen Uis für einen ColorCoach. Das
Programm soll es dem User ermöglichen, Farben per RGB-Slider oder HexCode in das
Programm einzugeben und den jeweiligen anderen Wert auszulesen. Gleichzeitig liefert
das Tool Hex- und RGB-Werte für die Komplementärfarbe.

Durchführung

Als Basis diente das Codesnippet, dass Prof. Geisler im Moodle zur Verfügung gestellt
hat. Darauf aufbauend wurde die erste UI-Variante fertig gestellt, bei der die Slider zur
Auswahl der RGB-Werte horizontal angelegt sind. Bei der zweiten Variante verlaufen die
Slider vertikal. In der linken Hälfte des Fensters ist die Urprungseingabe des Users zu
beobachten. Das Farbfeld, sowie die RGB-Zahlwerte und der Hexwert werden dabei live,
entsprechend der Eingaben des Users, umgesetzt und angezeigt. Die rechte Hälfte des
Fensters zeigt analog die Farbe, den Hexwert und die RGB-Wert der Komplementärfarbe
an. Auch die Werte der Komplementärfarbe werden live ausgelesen und umgesetzt,
sodass die linke Hälfte zu der rechts eingegebenen Komplementärfarbe die Basisfarbe
anzeigt.

Technik

Das Tool wurde mit em QtCreator als QtQuick-Anwendung programmiert. Dabei kam die
Skriptsprache QML zum Einsatz. Für einzelne Funktionen kamen Codesnippets aus
JavaScript zum Einsatz. Die IDE lief beim Entwickler auf einer aktuellen Debian-
Plattform. Zum Einsatz kamen Qt Version 3.6.0 und der QtCreator in der Version 4.0.0.

Design

Das Design basiert auf dem Codesnippet von Prof. Geisler und wurde für die erste
Variante des UI nur konsequent zu Ende geführt.
Eine Überschrift sitzt im Programm-Fenster zentral oben.
Darunter liegen die beiden großflächigen Farbfelder. Links das für die Basisfarbe, rechts
das der Komplementärfarbe. Darunter liegen zwei Textzeilen, die den Hexcode anzeigen,
bzw. für die Eingabe vorgesehen sind.
Im unteren Teil liegen die Slider. Je einer für Rot, Grün und Blau, jeweils für Basisfarbe
und Komplementärfarbe. Mit bezeichnenden Labels und jeweils rechts der Slider ein
Textfeld in der der Zahlwert des jeweiligen Farbwertes steht.
Bei der zweiten UI-Variante unterscheidet sich nur die Anlge der RGB-Slider. Diese sind
dort vertikal angeordnet. Die Labels sitzen jeweils oberhalb der Slider, die Textfelder
darunter. Dabei sind die Slider entsprechend Rot-Grün-Blau von links nach rechts
angeordnet.

Überlegungen zum UI

Das User Interface ist bewusst einfach gehalten. Zwei große Farbflächen lassen die
Farbtöne leicht erkennen. Die Hexcodes für die Farbtöne sind mit einer Raute, #,
gekennzeichnet, wie es üblich ist. Die Slider sind mit großen Labels gekennzeichnet, um
die Farbzuweisung zu erklären. Vorhandener Text ist in einfachem Englisch gehalten. Die
Anzahl der Funktionen ist ebenfalls bewusst niedrig gehalten, um die Anwendung
möglichst einfach zu gestalten.

Design-Unterschiede

Der einzige Unterschied zwischen den zwei UIs ist die Ausrichtung der Slider. In der
ersten Variante ist diese horizontal, in der zweiten vertikal. Dem entsprechend mussten
die Labels und Textfelder umsortiert werden, damit de Zuordnung durch den User möglich
ist.

Anwendung in einem A/B-Test

In einem A/B-Test werden zwei (oder mehr) verschiedene, meistens nur leicht veränderte,
Oberflächen oder Werkzeuge getestet. Dabei geht es meistens nur um eine einzelne
Funktion, die durch Test-User bedient und bewertet wird.
Bei einem within-subject-design testen alle User alle verfügbaren Oberflächen oder
Testaufbauten. Dieser direkte Vergleichstest ermöglicht vergleichendes Bewerten der
Probanden („A ist besser als B“), birgt aber die Gefahr eines Lerneffekts für die späteren
Testaufbauten, da der User weiß, worum es geht. Dem kann man entgegnen, indem eine
Hälfte der Probanden erst den A-Aufbau testet, dann denn B-Aufbau, und die zweite Hälfte
die Reihenfolge umkehrt.
Beim between-subject-design bekommt jeder Proband nur einen Testaufbau vorgelegt,
den er isoliert durchführen und bewerten soll. Vorteilig wirkt sich dabei aus, dass es keine
Beeinflussung des alternativen Testaufbaus gibt. Nachteilig ist dabei aber, dass die
unterschiedlichen Wahrnehmungen und Erfahrungen der einzelnen Probanden die
Ergebnisse beeinflussen können. Dies kann nur gefiltert werden, indem genug Probanden
gefunden werden, was sich mitunter schwierig gestaltet.
Der ColorCoach kann auch in einem solchen A/B-Test eingesetzt werden. Mit diesem
kann bewertet werden, wie schnell oder intuitiv das herausfinden der Komplementärfarbe
zu einer gegebenen Farbe herausgefunden werden kann. Die Schnelligkeit einer solchen
Suche, deren Durchführung genormt werden sollte, um objektive Ergebnisse zu
bekommen, kann mit einer simplen Zeitnahme getestet werden. Wie intuitiv das Toll zu
benutzen ist, lässt sich nur indirekt bestimmen: dabei kann die Zeitmessung einen
Anhaltspunkt liefern, weitere Indikatoren erfragt man in einem Interview, welches
anschließend an den Versuchsaufbau durchgeführt werden würde. Dies geht auch in
einem Aufbau, der, als Webseite zur Verfügung gestellt wird und theoretisch von jedem
PC mit Internetanschluss aus durchgeführt werden kann, was die Reichweite enorm
erhöht. Trotz der Reichweitenerhöhung bietet sich ein within-subject-design an, da die
Aussagekraft von vergleichenden Antworten allgemein höher ist. Dabei muss natürlich
sichergestellt werden, dass die Permutationen möglichst gleichmäßig auf die Probanden
verteilt werden, um die Lerneffekte zu minimieren. Eine Zeitnahme kann dadurch
automatisiert durch die Web-Plattform durchgeführt werden, was Ungenauigkeiten ebenso
minimiert. Anschließend erfolgt ein kurzer Fragebogen an die Probanden, in dem sie
gefragt werden, welches UI sie intuitiver finden, wie gut und schnell sie allgemein
verstanden haben, wie das UI funktioniert und in einer Freitext-Frage kann gefragt werden,
ob die Probanden Verbesserungsvorschläge haben.

