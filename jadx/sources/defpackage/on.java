package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.text.TextRange;
import com.kizitonwose.calendar.compose.ComposableSingletons$CalendarMonthsKt;
import com.kizitonwose.calendar.core.CalendarMonth;
import com.linkplay.medialib.server.HttpServer;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.Command;
import com.sightcall.libraries.archi.nucleus.Nucleus;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class on implements Function5 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f77508b;

    public /* synthetic */ on(int i2) {
        this.f77508b = i2;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object D(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        int i2;
        int i3;
        int i4;
        switch (this.f77508b) {
            case 0:
                Function2 function2 = (Function2) obj3;
                Composer composer = (Composer) obj4;
                int iIntValue = ((Integer) obj5).intValue();
                ComposableSingletons$CalendarMonthsKt composableSingletons$CalendarMonthsKt = ComposableSingletons$CalendarMonthsKt.f35935a;
                ((LazyItemScope) obj).getClass();
                ((CalendarMonth) obj2).getClass();
                function2.getClass();
                if ((iIntValue & KyberEngine.KyberPolyBytes) == 0) {
                    iIntValue |= composer.y(function2) ? 256 : 128;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 1153) != 1152)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    function2.invoke(composer, Integer.valueOf((iIntValue >> 6) & 14));
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Function2 function3 = (Function2) obj3;
                Composer composer2 = (Composer) obj4;
                int iIntValue2 = ((Integer) obj5).intValue();
                ComposableSingletons$CalendarMonthsKt composableSingletons$CalendarMonthsKt2 = ComposableSingletons$CalendarMonthsKt.f35935a;
                ((ColumnScope) obj).getClass();
                ((CalendarMonth) obj2).getClass();
                function3.getClass();
                if ((iIntValue2 & KyberEngine.KyberPolyBytes) == 0) {
                    iIntValue2 |= composer2.y(function3) ? 256 : 128;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 1153) != 1152)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    function3.invoke(composer2, Integer.valueOf((iIntValue2 >> 6) & 14));
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj;
                TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj2;
                Function0 function0 = (Function0) obj3;
                Composer composer3 = (Composer) obj4;
                int iIntValue3 = ((Integer) obj5).intValue();
                ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt composableSingletons$DefaultTextContextMenuDropdownProvider_androidKt = ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.f6097a;
                if ((iIntValue3 & 6) == 0) {
                    i2 = iIntValue3 | ((iIntValue3 & 8) == 0 ? composer3.K(textContextMenuSession) : composer3.y(textContextMenuSession) ? 4 : 2);
                } else {
                    i2 = iIntValue3;
                }
                if ((iIntValue3 & 48) == 0) {
                    i2 |= (iIntValue3 & 64) == 0 ? composer3.K(textContextMenuDataProvider) : composer3.y(textContextMenuDataProvider) ? 32 : 16;
                }
                if ((iIntValue3 & KyberEngine.KyberPolyBytes) == 0) {
                    i2 |= composer3.y(function0) ? 256 : 128;
                }
                if (composer3.p(i2 & 1, (i2 & 1171) != 1170)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    DefaultTextContextMenuDropdownProvider_androidKt.c(textContextMenuSession, textContextMenuDataProvider, function0, composer3, i2 & 1022);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                TextContextMenuSession textContextMenuSession2 = (TextContextMenuSession) obj;
                TextContextMenuDataProvider textContextMenuDataProvider2 = (TextContextMenuDataProvider) obj2;
                Function0 function1 = (Function0) obj3;
                Composer composer4 = (Composer) obj4;
                int iIntValue4 = ((Integer) obj5).intValue();
                ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt composableSingletons$DefaultTextContextMenuDropdownProvider_androidKt2 = ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.f6097a;
                if ((iIntValue4 & 6) == 0) {
                    i3 = iIntValue4 | ((iIntValue4 & 8) == 0 ? composer4.K(textContextMenuSession2) : composer4.y(textContextMenuSession2) ? 4 : 2);
                } else {
                    i3 = iIntValue4;
                }
                if ((iIntValue4 & 48) == 0) {
                    i3 |= (iIntValue4 & 64) == 0 ? composer4.K(textContextMenuDataProvider2) : composer4.y(textContextMenuDataProvider2) ? 32 : 16;
                }
                if ((iIntValue4 & KyberEngine.KyberPolyBytes) == 0) {
                    i3 |= composer4.y(function1) ? 256 : 128;
                }
                if (composer4.p(i3 & 1, (i3 & 1171) != 1170)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    DefaultTextContextMenuDropdownProvider_androidKt.c(textContextMenuSession2, textContextMenuDataProvider2, function1, composer4, i3 & 1022);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                TextContextMenuSession textContextMenuSession3 = (TextContextMenuSession) obj;
                TextContextMenuDataProvider textContextMenuDataProvider3 = (TextContextMenuDataProvider) obj2;
                Function0 function4 = (Function0) obj3;
                Composer composer5 = (Composer) obj4;
                int iIntValue5 = ((Integer) obj5).intValue();
                ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt composableSingletons$DefaultTextContextMenuDropdownProvider_androidKt3 = ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.f6097a;
                if ((iIntValue5 & 6) == 0) {
                    i4 = iIntValue5 | ((iIntValue5 & 8) == 0 ? composer5.K(textContextMenuSession3) : composer5.y(textContextMenuSession3) ? 4 : 2);
                } else {
                    i4 = iIntValue5;
                }
                if ((iIntValue5 & 48) == 0) {
                    i4 |= (iIntValue5 & 64) == 0 ? composer5.K(textContextMenuDataProvider3) : composer5.y(textContextMenuDataProvider3) ? 32 : 16;
                }
                if ((iIntValue5 & KyberEngine.KyberPolyBytes) == 0) {
                    i4 |= composer5.y(function4) ? 256 : 128;
                }
                if (composer5.p(i4 & 1, (i4 & 1171) != 1170)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    DefaultTextContextMenuDropdownProvider_androidKt.c(textContextMenuSession3, textContextMenuDataProvider3, function4, composer5, i4 & 1022);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                return Nucleus._init_$lambda$0(obj, (Command) obj2, (Action) obj3, obj4, (Command) obj5);
            case 6:
                return Nucleus._init_$lambda$2(obj, (Command) obj2, (Action) obj3, obj4, (Command) obj5);
            case 7:
                return Nucleus._init_$lambda$1(obj, (Command) obj2, (Action) obj3, obj4, (Command) obj5);
            case 8:
                return NucleusInteractorImpl.reducerHook$lambda$0(obj, (Command) obj2, (Action) obj3, obj4, (Command) obj5);
            default:
                boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                TextRange textRange = (TextRange) obj5;
                String string = ((CharSequence) obj4).subSequence(TextRange.f(textRange.f10566a), TextRange.e(textRange.f10566a)).toString();
                Intent intentPutExtra = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType(HttpServer.MIME_PLAINTEXT).putExtra("android.intent.extra.PROCESS_TEXT_READONLY", zBooleanValue);
                ActivityInfo activityInfo = ((ResolveInfo) obj2).activityInfo;
                Intent className = intentPutExtra.setClassName(activityInfo.packageName, activityInfo.name);
                className.putExtra("android.intent.extra.PROCESS_TEXT", string);
                ((Context) obj).startActivity(className);
                return Unit.f71739a;
        }
    }
}
