\version "2.24.0"

% DITEGGIATURA "villa-lobos": le corde del canto.
% Il tema parte dalla QUINTA corda: il si del levare (II tasto) striscia
% fino al mi (VII tasto) e le prime note restano li' (mi fa# sol la ai
% tasti 7, 9, 10, 12), con il mi grave a vuoto sotto. E' il gesto con cui
% comincia il Preludio n. 1 di Villa-Lobos. Dal si della seconda battuta il
% canto passa sulla quarta corda.

moldavaCantoDita = {
    % Intro
    s2.*38
    s4.        s4         s8\5                                                   |
    % A
    s2.                                                                          |
    s4\4       s8         s4.                                                    |
    s2.*6
    % B
    s2.*8
    % Coda
    s2.*8
    s4.        s4         s8\5                                                   |
    % A'
    s2.                                                                          |
    s4\4       s8         s4.                                                    |
    s2.*5
    s2.*2
}
