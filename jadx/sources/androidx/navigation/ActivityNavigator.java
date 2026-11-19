package androidx.navigation;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.navigation.internal.NavDestinationImpl;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.lc0;
import defpackage.p;
import defpackage.tg0;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Navigator.Name(ActionFloatingViewItem.f37018a)
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0007\bB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Landroidx/navigation/ActivityNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/ActivityNavigator$Destination;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Destination", "Companion", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class ActivityNavigator extends Navigator<Destination> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f18093e = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f18094c;
    public final Activity d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Landroidx/navigation/ActivityNavigator$Companion;", "", "", "EXTRA_NAV_SOURCE", "Ljava/lang/String;", "EXTRA_NAV_CURRENT", "EXTRA_POP_ENTER_ANIM", "EXTRA_POP_EXIT_ANIM", "LOG_TAG", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ActivityNavigator(Context context) {
        context.getClass();
        this.f18094c = context;
        for (Object obj : SequencesKt.n(context, new p(13))) {
            if (((Context) obj) instanceof Activity) {
                this.d = (Activity) obj;
            }
        }
        obj = null;
        this.d = (Activity) obj;
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination a() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination c(NavDestination navDestination, Bundle bundle, NavOptions navOptions) {
        Intent intent;
        int intExtra;
        Destination destination = (Destination) navDestination;
        Intent intent2 = destination.f18095h;
        NavDestinationImpl navDestinationImpl = destination.f18152c;
        if (intent2 == null) {
            tg0.c(defpackage.a.i(navDestinationImpl.f18344e, " does not have an Intent set.", new StringBuilder("Destination ")));
            return null;
        }
        Intent intent3 = new Intent(destination.f18095h);
        if (bundle != null) {
            intent3.putExtras(bundle);
            String str = destination.f18096i;
            if (str != null && str.length() != 0) {
                StringBuffer stringBuffer = new StringBuffer();
                Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(str);
                while (matcher.find()) {
                    String strGroup = matcher.group(1);
                    strGroup.getClass();
                    if (!bundle.containsKey(strGroup)) {
                        lc0.q("Could not find ", strGroup, " in ", bundle, " to fill data pattern ", str);
                        return null;
                    }
                    matcher.appendReplacement(stringBuffer, "");
                    NavArgument navArgument = (NavArgument) destination.h().get(strGroup);
                    NavType navType = navArgument != null ? navArgument.f18102a : null;
                    stringBuffer.append(navType != null ? navType.f(navType.a(strGroup, bundle)) : Uri.encode(String.valueOf(bundle.get(strGroup))));
                }
                matcher.appendTail(stringBuffer);
                intent3.setData(Uri.parse(stringBuffer.toString()));
            }
        }
        Activity activity = this.d;
        if (activity == null) {
            intent3.addFlags(268435456);
        }
        if (navOptions != null && navOptions.f18174a) {
            intent3.addFlags(PKIFailureInfo.duplicateCertReq);
        }
        if (activity != null && (intent = activity.getIntent()) != null && (intExtra = intent.getIntExtra("android-support-navigation:ActivityNavigator:current", 0)) != 0) {
            intent3.putExtra("android-support-navigation:ActivityNavigator:source", intExtra);
        }
        intent3.putExtra("android-support-navigation:ActivityNavigator:current", navDestinationImpl.f18344e);
        Context context = this.f18094c;
        Resources resources = context.getResources();
        if (navOptions != null) {
            int i2 = navOptions.f18179h;
            int i3 = navOptions.f18180i;
            if ((i2 <= 0 || !Intrinsics.c(resources.getResourceTypeName(i2), "animator")) && (i3 <= 0 || !Intrinsics.c(resources.getResourceTypeName(i3), "animator"))) {
                intent3.putExtra("android-support-navigation:ActivityNavigator:popEnterAnim", i2);
                intent3.putExtra("android-support-navigation:ActivityNavigator:popExitAnim", i3).getClass();
            } else {
                resources.getResourceName(i2);
                resources.getResourceName(i3);
                destination.toString();
            }
        }
        context.startActivity(intent3);
        if (navOptions != null && activity != null) {
            int i4 = navOptions.f18178f;
            int i5 = navOptions.g;
            if ((i4 > 0 && Intrinsics.c(resources.getResourceTypeName(i4), "animator")) || (i5 > 0 && Intrinsics.c(resources.getResourceTypeName(i5), "animator"))) {
                resources.getResourceName(i4);
                resources.getResourceName(i5);
                destination.toString();
                return null;
            }
            if (i4 >= 0 || i5 >= 0) {
                if (i4 < 0) {
                    i4 = 0;
                }
                activity.overridePendingTransition(i4, i5 >= 0 ? i5 : 0);
            }
        }
        return null;
    }

    @Override // androidx.navigation.Navigator
    public final boolean j() {
        Activity activity = this.d;
        if (activity == null) {
            return false;
        }
        activity.finish();
        return true;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\b¨\u0006\t"}, d2 = {"Landroidx/navigation/ActivityNavigator$Destination;", "Landroidx/navigation/NavDestination;", "Landroidx/navigation/Navigator;", "activityNavigator", "<init>", "(Landroidx/navigation/Navigator;)V", "Landroidx/navigation/NavigatorProvider;", "navigatorProvider", "(Landroidx/navigation/NavigatorProvider;)V", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static class Destination extends NavDestination {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Intent f18095h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f18096i;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.b(ActivityNavigator.class));
            navigatorProvider.getClass();
        }

        public static String p(Context context, String str) {
            if (str == null) {
                return null;
            }
            String packageName = context.getPackageName();
            packageName.getClass();
            return StringsKt.J(str, "${applicationId}", packageName);
        }

        @Override // androidx.navigation.NavDestination
        public final boolean equals(Object obj) {
            boolean zFilterEquals;
            if (this == obj) {
                return true;
            }
            if (obj != null && (obj instanceof Destination) && super.equals(obj)) {
                Intent intent = this.f18095h;
                if (intent != null) {
                    zFilterEquals = intent.filterEquals(((Destination) obj).f18095h);
                } else {
                    zFilterEquals = ((Destination) obj).f18095h == null;
                }
                if (zFilterEquals && Intrinsics.c(this.f18096i, ((Destination) obj).f18096i)) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.navigation.NavDestination
        public final int hashCode() {
            int iHashCode = super.hashCode() * 31;
            Intent intent = this.f18095h;
            int iFilterHashCode = (iHashCode + (intent != null ? intent.filterHashCode() : 0)) * 31;
            String str = this.f18096i;
            return iFilterHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        public final void m(Context context, AttributeSet attributeSet) {
            context.getClass();
            attributeSet.getClass();
            super.m(context, attributeSet);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.f18217a);
            typedArrayObtainAttributes.getClass();
            String strP = p(context, typedArrayObtainAttributes.getString(4));
            if (this.f18095h == null) {
                this.f18095h = new Intent();
            }
            Intent intent = this.f18095h;
            intent.getClass();
            intent.setPackage(strP);
            String string = typedArrayObtainAttributes.getString(0);
            if (string != null) {
                if (string.charAt(0) == '.') {
                    string = context.getPackageName() + string;
                }
                ComponentName componentName = new ComponentName(context, string);
                if (this.f18095h == null) {
                    this.f18095h = new Intent();
                }
                Intent intent2 = this.f18095h;
                intent2.getClass();
                intent2.setComponent(componentName);
            }
            String string2 = typedArrayObtainAttributes.getString(1);
            if (this.f18095h == null) {
                this.f18095h = new Intent();
            }
            Intent intent3 = this.f18095h;
            intent3.getClass();
            intent3.setAction(string2);
            String strP2 = p(context, typedArrayObtainAttributes.getString(2));
            if (strP2 != null) {
                Uri uri = Uri.parse(strP2);
                if (this.f18095h == null) {
                    this.f18095h = new Intent();
                }
                Intent intent4 = this.f18095h;
                intent4.getClass();
                intent4.setData(uri);
            }
            this.f18096i = p(context, typedArrayObtainAttributes.getString(3));
            typedArrayObtainAttributes.recycle();
        }

        @Override // androidx.navigation.NavDestination
        public final String toString() {
            Intent intent = this.f18095h;
            ComponentName component = intent != null ? intent.getComponent() : null;
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            if (component != null) {
                sb.append(" class=");
                sb.append(component.getClassName());
            } else {
                Intent intent2 = this.f18095h;
                String action = intent2 != null ? intent2.getAction() : null;
                if (action != null) {
                    sb.append(" action=");
                    sb.append(action);
                }
            }
            return sb.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(Navigator<? extends Destination> navigator) {
            super(navigator);
            navigator.getClass();
        }
    }
}
