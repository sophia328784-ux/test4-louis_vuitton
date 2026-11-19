package com.sightcall.universal.util;

import android.content.Context;
import android.content.Intent;
import com.sightcall.universal.R;
import com.sightcall.universal.internal.view.CallButton;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0002\u0010\r\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"actionUpdateHelp", "", "extraText", "extraSource", "ACTION_SPEECH_EVENT", "EXTRA_RESULT", "updateHelpVoiceCommands", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "callButtons", "", "Lcom/sightcall/universal/internal/view/CallButton;", "(Landroid/content/Context;[Lcom/sightcall/universal/internal/view/CallButton;)V", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class RealWearUtilsKt {
    public static final String ACTION_SPEECH_EVENT = "com.realwear.wearhf.intent.action.SPEECH_EVENT";
    public static final String EXTRA_RESULT = "command";
    private static final String actionUpdateHelp = "com.realwear.wearhf.intent.action.UPDATE_HELP_COMMANDS";
    private static final String extraSource = "com.realwear.wearhf.intent.extra.SOURCE_PACKAGE";
    private static final String extraText = "com.realwear.wearhf.intent.extra.HELP_COMMANDS";

    public static final void updateHelpVoiceCommands(Context context, CallButton[] callButtonArr) {
        Collection<? extends String> collectionW;
        List listW;
        context.getClass();
        ArrayList<String> arrayList = new ArrayList<>();
        if (callButtonArr == null || (listW = ArraysKt.W(callButtonArr)) == null) {
            String[] stringArray = context.getResources().getStringArray(R.array.universal_help_voice_commands);
            stringArray.getClass();
            collectionW = ArraysKt.W(stringArray);
        } else {
            collectionW = new ArrayList<>();
            Iterator it = listW.iterator();
            while (it.hasNext()) {
                int[] iArr = ((CallButton) it.next()).voiceCommands;
                iArr.getClass();
                ArrayList arrayList2 = new ArrayList(iArr.length);
                for (int i2 : iArr) {
                    arrayList2.add(context.getResources().getString(i2));
                }
                CollectionsKt.j(collectionW, arrayList2);
            }
        }
        arrayList.addAll(collectionW);
        Context applicationContext = context.getApplicationContext();
        Intent intent = new Intent(actionUpdateHelp);
        intent.putStringArrayListExtra(extraText, arrayList);
        intent.putExtra(extraSource, context.getPackageName());
        applicationContext.sendBroadcast(intent);
    }
}
