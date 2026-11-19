package androidx.compose.ui.platform;

import android.content.res.Resources;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import com.vuitton.android.R;
import defpackage.v40;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidComposeViewAccessibilityDelegateCompat_androidKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9923a;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            try {
                iArr[ToggleableState.On.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ToggleableState.Off.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ToggleableState.Indeterminate.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f9923a = iArr;
        }
    }

    public static final boolean a(SemanticsNode semanticsNode) {
        return !semanticsNode.k().f10312b.c(SemanticsProperties.f10338j);
    }

    public static final boolean b(SemanticsNode semanticsNode, Resources resources) {
        List list = (List) SemanticsConfigurationKt.a(semanticsNode.d, SemanticsProperties.f10331a);
        return !SemanticsOwnerKt.e(semanticsNode) && (semanticsNode.d.f10314e || (semanticsNode.p() && ((list != null ? (String) CollectionsKt.firstOrNull(list) : null) != null || f(semanticsNode) != null || e(semanticsNode, resources) != null || d(semanticsNode))));
    }

    public static final LayoutNode c(LayoutNode layoutNode, Function1 function1) {
        for (LayoutNode layoutNodeO = layoutNode.O(); layoutNodeO != null; layoutNodeO = layoutNodeO.O()) {
            if (((Boolean) function1.invoke(layoutNodeO)).booleanValue()) {
                return layoutNodeO;
            }
        }
        return null;
    }

    public static final boolean d(SemanticsNode semanticsNode) {
        ToggleableState toggleableState = (ToggleableState) SemanticsConfigurationKt.a(semanticsNode.d, SemanticsProperties.K);
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        Role role = (Role) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.z);
        boolean z = toggleableState != null;
        if (((Boolean) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.J)) != null) {
            Role.f10289b.getClass();
            int i2 = Role.f10292f;
            if (role == null || role.f10296a != i2) {
                return true;
            }
        }
        return z;
    }

    public static final String e(SemanticsNode semanticsNode, Resources resources) {
        Collection collection;
        CharSequence charSequence;
        int iD;
        Object objA = SemanticsConfigurationKt.a(semanticsNode.d, SemanticsProperties.f10332b);
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        ToggleableState toggleableState = (ToggleableState) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.K);
        Role role = (Role) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.z);
        Object string = null;
        if (toggleableState != null) {
            int i2 = WhenMappings.f9923a[toggleableState.ordinal()];
            if (i2 == 1) {
                Role.f10289b.getClass();
                int i3 = Role.d;
                if (role != null && role.f10296a == i3 && objA == null) {
                    objA = resources.getString(R.string.state_on);
                }
            } else if (i2 == 2) {
                Role.f10289b.getClass();
                int i4 = Role.d;
                if (role != null && role.f10296a == i4 && objA == null) {
                    objA = resources.getString(R.string.state_off);
                }
            } else {
                if (i2 != 3) {
                    v40.g();
                    return null;
                }
                if (objA == null) {
                    objA = resources.getString(R.string.indeterminate);
                }
            }
        }
        Boolean bool = (Boolean) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.J);
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            Role.f10289b.getClass();
            int i5 = Role.f10292f;
            if ((role == null || role.f10296a != i5) && objA == null) {
                objA = zBooleanValue ? resources.getString(R.string.selected) : resources.getString(R.string.not_selected);
            }
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.f10333c);
        if (progressBarRangeInfo != null) {
            ProgressBarRangeInfo.d.getClass();
            if (progressBarRangeInfo != ProgressBarRangeInfo.f10285e) {
                if (objA == null) {
                    ClosedFloatingPointRange closedFloatingPointRange = progressBarRangeInfo.f10287b;
                    float fFloatValue = closedFloatingPointRange.f().floatValue() - closedFloatingPointRange.i().floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : (progressBarRangeInfo.f10286a - closedFloatingPointRange.i().floatValue()) / (closedFloatingPointRange.f().floatValue() - closedFloatingPointRange.i().floatValue());
                    if (fFloatValue < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        fFloatValue = 0.0f;
                    }
                    if (fFloatValue > 1.0f) {
                        fFloatValue = 1.0f;
                    }
                    if (fFloatValue == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        iD = 0;
                    } else {
                        iD = fFloatValue == 1.0f ? 100 : RangesKt.d(Math.round(fFloatValue * 100.0f), 1, 99);
                    }
                    objA = resources.getString(R.string.template_percent, Integer.valueOf(iD));
                }
            } else if (objA == null) {
                objA = resources.getString(R.string.in_progress);
            }
        }
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.G;
        if (semanticsConfiguration.f10312b.c(semanticsPropertyKey)) {
            SemanticsConfiguration semanticsConfigurationK = new SemanticsNode(semanticsNode.f10318a, true, semanticsNode.f10320c, semanticsConfiguration).k();
            Collection collection2 = (Collection) SemanticsConfigurationKt.a(semanticsConfigurationK, SemanticsProperties.f10331a);
            if ((collection2 == null || collection2.isEmpty()) && (((collection = (Collection) SemanticsConfigurationKt.a(semanticsConfigurationK, SemanticsProperties.C)) == null || collection.isEmpty()) && ((charSequence = (CharSequence) SemanticsConfigurationKt.a(semanticsConfigurationK, semanticsPropertyKey)) == null || charSequence.length() == 0))) {
                string = resources.getString(R.string.state_empty);
            }
            objA = string;
        }
        return (String) objA;
    }

    public static final AnnotatedString f(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        AnnotatedString annotatedString = (AnnotatedString) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.G);
        List list = (List) SemanticsConfigurationKt.a(semanticsNode.d, SemanticsProperties.C);
        return annotatedString == null ? list != null ? (AnnotatedString) CollectionsKt.firstOrNull(list) : null : annotatedString;
    }
}
