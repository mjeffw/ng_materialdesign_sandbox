import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'mjw-info-popup',
  styleUrls: const ['spell_editor.css'],
  directives: const <dynamic>[
    AutoDismissDirective,
    AutoFocusDirective,
    MaterialButtonComponent,
    MaterialDialogComponent,
    MaterialIconComponent,
    ModalComponent,
  ],
  template: '''
    <modal [(visible)]="showInfoPopup">
      <material-dialog
          info
          class="info-dialog"
          [autoDismissable]="showInfoPopup"
          (dismiss)="showInfoPopup = false">
    
        <div header>
          <material-button icon autoFocus (trigger)="showInfoPopup = false">
            <material-icon icon="close"></material-icon>
          </material-button>
    
          <h3>About the Dungeon Fantasy Incanter's Aid</h3>
        </div>
        
        <div style="display:table;"> <!-- <div class='t'> -->
          <div style="display:table-cell;vertical-align:middle;"> <!-- <div class='imgcontainer'> -->
            <img src="apple-icon-72x72.png">
          </div>
          <p style="padding-left: 5px">
          Players of <i>GURPS Dungeon Fantasy</i> or the <i>Dungeon Fantasy Roleplaying Game</i> may use this aid to create
          and calculate the spell point cost of incantations built using the optional Incantation Magic system, described in <a href="http://www.sjgames.com/gurps/books/dungeonfantasy/dungeonfantasy19/">Dungeon Fantasy
          19 Incantation Magic</a>. A copy of that PDF is required. 
          </p>
        </div>
        
        <p style='font-size: smaller;'>
        <i>GURPS</i> and <i>Dungeon Fantasy Roleplaying Game</i> are trademarks of Steve Jackson Games, and its rules 
        and art are copyrighted by Steve Jackson Games. All rights are reserved by Steve Jackson Games. This game aid 
        is the original creation of M. Jeff Wilson and is released for free distribution, and not for resale, under the 
        permissions granted in the <a href="http://www.sjgames.com/general/online_policy.html">Steve Jackson Games 
        Online Policy</a>.
        </p>
    
      </material-dialog>
    </modal>  
''',
  providers: const <dynamic>[materialProviders],
)
class InfoPopup {
  bool showInfoPopup = true;
}
