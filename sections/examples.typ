#import "../utils.typ": *

#section("Examples")
#subsection("Kräfte")
#subsubsection("Gewicht am Seil")
#align(center, image("../figures/exercise/gewichtKräfte.png", width: 75%))
Ein (masseloses) Seil ist an den Punkten A und B an zwei gegenüberliegenden Wänden befestigt, wobei die Wände im Abstand $a = 2m$ stehen. Der Befestigungspunkt A befindet sich $1m$ unterhalb vom Befestigungspunkt B. Eine Masse $m_G = 20 k g$ werde an das Seil gehängt (wobei sich die Masse entlang des Seils bewegen kann). Die beiden Seilenden haben
einen Winkel von $alpha = 30°$ zum Lot hin. \

a) Wie gross sind die einzelnen Seilkräfte? \
$ x = underbrace(0, F_G) + underbrace(cos(60) dot F_"s1", F_"s1") - underbrace(cos(60) dot F_"s2", F_"s2") = 0 $
$ y = underbrace(-F_G, F_G) + underbrace(cos(30) dot F_"s1", F_"s1") + underbrace(cos(30) dot F_"s2", F_"s2") = 0 $
Nach $F_"s1"$ und $F_"s2"$ auflösen oder im TR lösen gibt:
$ F_"s1" = F_"s2" = 113.27N $

b) Wie lang sind die einzelnen Seilabschnitte? \
#align(center, image("../figures/exercise/seillängen.png", width: 60%))

Formel für x herausfinden:
$ d / l_a = sin(alpha) => d  = l_a dot sin(alpha) $
$ frac(a - d, l_b) = sin(alpha) => a - d = l_b dot sin(alpha) $
$ x: underbrace(l_a dot sin(alpha), d) + underbrace(l_b dot sin(alpha), a - d) = "a"  $

Formel für y herausfinden:
$ A_1 / l_a = cos(alpha) => A_1 = cos(alpha) dot l_A $
$ frac(A_1 + b, l_b) = cos(alpha) => A_1 + b = cos(alpha) dot l_b $
$ y: b + underbrace(cos(alpha) dot l_A, A_1) = underbrace(cos(alpha) dot l_b, A_1 + b) $

x und y nach $l_a$ und $l_b$ im TR auflösen:
$ l_A = 1.422m $
$ l_B = 2.577m $

#subsection("Drehmoment")
#align(center, image("../figures/exercise/kran.png", width: 75%))
Ein Kran hebt einen Stein der Masse $G = 150k g$ wie in der Skizze dargestellt. Der Kranarm ist an Punkt A drehbar gelagert und das Seil ist in Punkt B um eine Umlenkrolle geschleift und am Kranarm fest verbunden. Welcher Kraft $F_S$ ist das Seil ausgesetzt? \
Berechnen sie die Kraft, mit welcher das Kranlager an Punkt A auf den Kranarm wirkt, wenn das System im Gleichgewicht ist.
#align(center, image("../figures/exercise/kranKräfte.png", width: 100%))

$ M = "Hebel 1" + "Hebel 2" = 0 $
$ F_X = F_"S1" + F_"S2" F_"A" = 0 $
$ F_Y = F_"S1" + F_"S2" F_"A" - F_G = 0 $

Einsetzen in Solver:
$ 3 dot 150 k g dot 9.81 dot cos(30) - 1 dot F_S - 2 dot F_S dot cos (30) = 0 $
$ -F_S dot sin(30) - F_S dot sin(60) + F_"Ax" = 0 $
$ F_S dot cos(30) + F_S dot cos(60) + A_"Ay" - 150 k g dot 9.81 = 0 $

#subsection("Geschwindigkeit")
#subsubsection("Tuch wegziehen")
Auf einem Tisch steht eine Blumenvase. Wir wollen das Tischtuch wegziehen, ohne dass die Vase herunterfällt. \
Das Tuch wird ruckartig auf eine konstante Geschwindigkeit $v_0$ beschleunigt (die für die Beschleunigung benötigte Zeit wird vernachlässigt) und wird dann mit dieser konstanten Geschwindigkeit auf einer Strecke von $60c m$ bewegt. Die Gleitreibung zwischen Vase und Tischtuch hat den Wert $µ_G = 0.3$. Wie schnell muss daS Tuch bewegt werden, damit sich die Vase in der gleichen Zeit höchstens $5c m$ bewegt? \

Zuerst können wir die Zeit durch einige der Grössen ausdrücken:
$ t = S_T / v_0 $

Beschleunigt wird unsere Vase durch die Reibung des durchrutschenden Tischtuches. Dabei können wir sagen, dass die Gesamtkraft für die Beschleunigung der Reibungskraft entsprechen muss.
$ m dot a = mu_G dot m dot g $
$ a = mu_G dot g $

Nun können wir die Strecke der Vase berechnen:
$ t = S_T / v_0 S_V = a_v / 2 dot t^2 $
$ t = 0.6 / v_0 0.05 = frac(0.3 dot 9.81, 2) dot t^2 $
$ v = 3.25 m/s $

#subsubsection("Autobahn")
Auf einer Autobahn fährt ein Fahrzeug A mit konstanter Geschwindigkeit $v_"A0" = 110 frac(k m, h)$. In die Autobahn fährt ein Fahrzeug B ein. Zum Zeitpunkt des Einfahren ($t = 0$) hat Fahrzeug B eine Geschwindigkeit $v_"B0" = 110 frac(k m, h)$ und einen Abstand von Fahrzeug A von $d = 200m$. Welche (konstant angenommene) Beschleunigung aB muss Fahrzeug B haben, wenn ein Mindestabstand der beiden von $d_"min" = 40m$ eingehalten werden soll? \

Überlegung: Der Mindestabstand muss eingehalten werden, wenn beide Fahrzeuge gleich schnell sind. Dieser Mindestabstand muss zum Zeitpunkt $t x$ erreicht sein. Falls A langsamer ist als B, dann vergrössert sich der Abstand, umgekehrt verringert sich der Abstand. \
Somit gilt:
$ v_"A0" = v_"B0" + a_B dot t_x $

Ausserdem können wir den Mindestabstand algebraisch ausdrücken. Fahrzeug A bewältigt diese Strecke mit seiner regelmässigen Geschwindigkeit $v_"A0" dot t x$. Bei Fahrzeug B ist dies etwas mehr:
$ "Beschleunigung:" a_B / 2 dot t^2_x $
$ "Startgeschwindigkeit:" v_"B0" dot t_x $
$ "Vorsprung:" 200m $

Zusammengesetzt:
$ d_min = S_B - S_A $
$ d_min = a_B / 2 dot t^2_x + v_"B0" dot t_x +d - v_"A0" dot t_x $
$ t_x = 28.8 $
$ a_B = 0.39 $

#subsection("Würfe")
#subsubsection("Schiefer Wurf mit Basketball")
#align(center, image("../figures/exercise/basketballwurf.png", width: 75%))
Ein Basketball mit $30c m$ Durchmesser soll in einem Abwurfwinkel von $70°$ zur Horizontalen direkt in den Basketball-Korb geworfen werden aus einer Höhe von $2.1m$ (Ballmittelpunkt). Die Mitte des Korbrings von 35cm Durchmesser befindet sich in einer Distanz von $2.7m$ und in $3.2m$ Höhe.

$ a_x = 0 $
$ v_x(t) = v_0 dot cos(phi) $
$ x(t) = v_0 dot cos(phi) dot t + underbrace(0, "Anfangshöhe") $

$ a_y = -g $
$ v_x(t) = v_0 dot sin(phi) - g dot t $
$ y(t) = -1/2 g t^2 + v_0 dot sin(phi) dot t + underbrace(2.1m, "Anfangshöhe") $

a) Was ist die Abwurf-Geschwindigkeit unter der Annahme eines perfekten Wurfs (Ballmittelpunkt passiert genau in der Korbmitte)? Wie lange braucht der Ball bis zur Korbmitte? 
Formel für Abwurfgeschwindigkeit:
$ x(t): v_0 dot cos(phi) dot t = 2.7m => v_0 = frac(2.7m, cos(phi) dot t) $

Formel zum $t$ herausfinden:
$ y(t): -1/2 g t^2 + v_0 dot sin(phi) dot t + 2.1m = 3.2m $

x und y nach $t$ und $v_0$ im TR auflösen:
$ t = 1.13s $
$ v_0 = 6.95 m/s $

c) Welche maximale Höhe erreicht der Ball (Referenzpunkt: Ballmitte)? 
$ h_max = frac(v_0, 2 dot g) dot sin(phi)^2 + 2.1m $
$ h_max = frac(6.95 m/s, 2 dot g) dot sin(70)^2 + underbrace(2.1m, "Abwurfhöhe") $
$ h_max = 4.27m $

d) In welcher Distanz und Höhe relativ zur Abwurfstelle befindet sich der Ball nach 1.1s?
$ x(1.1) = 6.95 dot cos(70) dot 1.1 = 2.7m $
$ y(1.1) = -1/2 g dot 1.1^2 + 6.95 dot sin(70) dot 1.1 = 1.1m $

#subsubsection("Schiefer Wurf mit Schlauch")
Ein Schlauch wird so gehalten, dass ein kollimierter Wasserstrahl mit $15m/s$ unter $55°$ gegenüber der Horizontalen nach oben spritzt. In $7.0m$ Entfernung befindet sich eine Wand.

$ a_x = 0 $
$ v_x(t) = v_0 dot cos(phi) $
$ x(t) = v_0 dot cos(phi) dot t + underbrace(x_0, "Anfangshöhe") $

$ a_y = -g $
$ v_x(t) = v_0 dot sin(phi) - g dot t $
$ y(t) = -1/2 g t^2 + v_0 dot sin(phi) dot t + underbrace(x_0, "Anfangshöhe") $

a) Wo befindet sich das Wasser 0.5 s nach Verlassen der Schlauchdüse und welche Geschwindigkeit hat es?
Ort: \
$ x(0.5) = 15m/s dot cos(55) dot 0.5s = 4.3m $
$ y(0.5) = -1/2 g dot 0.5^2 + 15 m/s dot sin(55) dot 0.5 = 4.9m $

Geschwindigkeit: \
$ v_x(0.5) = 15 m/s cos(55) = 8.6 m/s $
$ v_y(0.5) = 15 m/s dot sin(55) - g dot t = 7.3 3/s $

b) Nach welcher Zeit und in welcher Höhe über der Schlauchdüse trifft das Wasser auf die Wand?
$ underbrace(7m, x(t)) = v_0 dot cos(phi) dot t $
$ t = frac(7m, 15 m/s dot cos(55)) = 0.8s $
$ y(0.8) = -1/2 g dot 0.8^2 + 15 m/s dot sin(55) dot 0.8 = 6.7m $

c) Wie weit (auf der Höhe der Düse) und wie hoch würde das Wasser ohne Wand spritzen?
$ d = v^2_0 / g dot sin(2 dot phi) = 21.55 m $
$ h_max = frac(v^2_0, 2 dot g) dot sin(phi)^2 = 7.6m $

#subsection("Trägheitsmoment")
#subsubsection("Herabrollen Stahlkugel")
Wie lange braucht eine homogene Stahlkugel zum Herabrollen auf einer $1m$ langen, schiefen Ebene mit einem Steigungswinkel von $phi = 30°$? Die Bewegung beginne aus dem Stillstand und Kugel rollt ohne zu gleiten. Die Kugel erfährt eine konstante Beschleunigung. \
Energiebilanz:
$ m dot g dot h = frac(m dot v^2, 2) + frac(J dot omega^2, 2) $
$ omega = v / r $
$ J = frac(2 dot m dot R^2, 5) $
$ s = frac(a dot t^2, 2) $
$ v = a dot t $
$ h = s dot sin(phi) $
Setzen wir das zusammen, k¨urzt sich der Radius und die Masse der Kugel heraus.
$ m dot g dot h = 1/2 dot m dot v^2 + 1/2 dot 2/5 dot m dot R^2 dot (V/R)^2 $
$ m dot g dot h = m dot v^2(1/2 dot 2/5) $
$ m dot g dot h = frac(7 dot m dot v^2, 10) $
$ g dot h = frac(7 dot v^2, 10) $

#subsubsection("Drehmoment Seiltrommel")
An einer Seiltrommel mit einem Durchmesser von $29c m$ und einem Massenträgheitsmoment von $3.3k g m^2$ hängt eine Masse von $70k g$. Welches Drehmoment muss der Motor an der Seiltrommel aufbringen, damit die Last mit einer Beschleunigung von $2 m/s^2$ aufgehoben wird? \

Hier müssen wir uns fragen, wo die Kraft des Motors ansetzen wird. Basierend auf der Aufgabenstellung wird wohl die Achse der Seiltrommel rotiert, somit gilt das Drehmoment um eine gegebene Achse ($M = J_A dot alpha$). $J_A$ ist mit $3.3k g m^2$ bereits gegeben. Die Winkelbeschleunigung kann mit $alpha = a / r$ berechnet werden. $a$ entspricht $2 m/s^2$ und $r = 0.29/2$. \

Nun soll der Motor auch noch die Masse heben können. Dazu brauchen wir das Drehmoment $M = F dot r$. $F$ entspricht hierbei $m dot a$, wobei wir a nochmals aufschlüsseln müssen, da einerseits $g$ nach unten zieht, aber wir die Masse mit $2 m/s^2$ hochziehen wollen. Unser finales $a$ ist somit $g + 2 m / s^2$ .
Stecken wir das alles zusammen erh¨alt man:
$ M_M = J_A dot alpha + F dot r $
$ M_M = 3.3 dot 2 / 0.145 + 70 dot (9.81 + 2) dot 0.145 $
$ M_M = 165.389N $

Es kann auch sein, dass gefragt wird nach der Kraft, welche auf dem Seil wirkt. Die Gleichungen wären:
$ F_"res" = m dot g - s = m dot a $
$ M_"res" = r dot s = J dot a / r $

#subsubsection("Raumkapsel")
Eine Raumkapsel mit starr befestigten Sonnensegeln soll ausgerichtet werden. Dazu muss sie um den Winkel $phi = 180+°$ um ihre Längsachse gedreht werden. Dazu wird ein Elektromotor - dessen Drehachse parallel zur Längsachse des Raumschiffs ausgerichtet wird, eingeschaltet. \

Das axiale Massenträgheitsmoment des Rotors des Elektromotors ist $J_M = 0.2k g dot m^2$. \

Welche Winkelgeschwindigkeit $omega_R$ der Raumkapsel stellt sich ein, wenn der Motor mit der Drehfrequenz $3000 m i n^(-1) $ rotiert? Die Winkelgeschwindigkeit des Motors ist $omega_M = 2 pi 3000 / 60 = 100 pi$. \

Der Drehimpuls muss erhalten bleiben, daher kann man die beiden Formeln für den Rotationsimpuls um eine Achse gleich stellen:

$ J_M dot omega_M = J_R dot omega_R $
$ dot 100 pi = 3 dot 10^3 dot omega_R $
$ omega_R = 0.021s^(-1) $