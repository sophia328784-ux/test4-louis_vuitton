package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.composer.GroupSourceInformation;
import androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation;
import defpackage.mt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b!\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;", "", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ComposeStackTraceBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f8553a = new ArrayList();

    public final boolean a(int i2, GroupSourceInformation groupSourceInformation, Object obj) {
        ArrayList d = groupSourceInformation.getD();
        boolean z = false;
        if (d != null) {
            int size = d.size();
            for (int i3 = 0; i3 < size; i3++) {
                Object obj2 = d.get(i3);
                if (!(obj2 instanceof Anchor)) {
                    if (!(obj2 instanceof GroupSourceInformation)) {
                        mt.f(obj2, "Unexpected child source info ");
                        break;
                    }
                    if (a(i2, (GroupSourceInformation) obj2, obj)) {
                        b(groupSourceInformation.getF8188a(), groupSourceInformation, obj2);
                        return true;
                    }
                } else if (obj2.equals(obj)) {
                    b(groupSourceInformation.getF8188a(), groupSourceInformation, obj2);
                    return true;
                }
            }
        } else {
            if (!groupSourceInformation.c()) {
                b(i2, groupSourceInformation, null);
                return true;
            }
            int f8190c = groupSourceInformation.getF8190c();
            int iB = groupSourceInformation.b();
            if (obj instanceof Integer) {
                Number number = (Number) obj;
                int iIntValue = number.intValue();
                if ((f8190c <= iIntValue && iIntValue < iB) || (f8190c == iB && f8190c == number.intValue())) {
                    z = true;
                }
                if (z) {
                    b(groupSourceInformation.getF8188a(), groupSourceInformation, null);
                }
                return z;
            }
        }
        return false;
    }

    public final void b(int i2, GroupSourceInformation groupSourceInformation, Object obj) {
        SourceInformation sourceInformationA;
        ComposeStackTraceFrame composeStackTraceFrame;
        String f8189b;
        String f8189b2;
        String f8189b3;
        if (groupSourceInformation == null || (f8189b3 = groupSourceInformation.getF8189b()) == null || f8189b3.length() == 0) {
            sourceInformationA = null;
        } else {
            try {
                sourceInformationA = SourceInformationKt.a(f8189b3);
            } catch (ParseException unused) {
                sourceInformationA = null;
            }
        }
        if (sourceInformationA == null) {
            composeStackTraceFrame = new ComposeStackTraceFrame(i2, null, null);
        } else if (obj == null) {
            composeStackTraceFrame = new ComposeStackTraceFrame(i2, sourceInformationA, null);
        } else {
            ArrayList d = groupSourceInformation.getD();
            int i3 = 0;
            if (d != null) {
                int size = d.size();
                int i4 = 0;
                for (int i5 = 0; i5 < size; i5++) {
                    Object obj2 = d.get(i5);
                    if (Intrinsics.c(obj2, obj)) {
                        break;
                    }
                    GroupSourceInformation groupSourceInformationE = e(obj2);
                    if (groupSourceInformationE != null && ((groupSourceInformationE.getF8188a() == -127 || (groupSourceInformationE.getF8188a() == 0 && (obj2 instanceof Anchor) && c((Anchor) obj2) == -127)) && groupSourceInformationE.getF8189b() == null)) {
                        ArrayList d2 = groupSourceInformationE.getD();
                        if (d2 != null) {
                            int size2 = d2.size();
                            for (int i6 = 0; i6 < size2; i6++) {
                                GroupSourceInformation groupSourceInformationE2 = e(d2.get(i6));
                                if (groupSourceInformationE2 != null && (f8189b2 = groupSourceInformationE2.getF8189b()) != null && StringsKt.P(f8189b2, "C", false)) {
                                    i4++;
                                }
                            }
                        }
                    } else if (groupSourceInformationE != null && (f8189b = groupSourceInformationE.getF8189b()) != null && StringsKt.P(f8189b, "C", false)) {
                        i4++;
                    }
                }
                i3 = i4;
            }
            composeStackTraceFrame = new ComposeStackTraceFrame(i2, sourceInformationA, Integer.valueOf(i3));
        }
        this.f8553a.add(composeStackTraceFrame);
    }

    public abstract int c(Anchor anchor);

    public final void d(int i2, Object obj, GapGroupSourceInformation gapGroupSourceInformation, Object obj2) {
        if (gapGroupSourceInformation != null || Intrinsics.c(obj, Composer.Companion.f7939a)) {
            if (obj2 == null || gapGroupSourceInformation == null) {
                b(i2, gapGroupSourceInformation, null);
            } else {
                if (a(i2, gapGroupSourceInformation, obj2)) {
                    return;
                }
                b(i2, gapGroupSourceInformation, obj2);
            }
        }
    }

    public final GroupSourceInformation e(Object obj) {
        if (obj instanceof Anchor) {
            return f((Anchor) obj);
        }
        if (obj instanceof GroupSourceInformation) {
            return (GroupSourceInformation) obj;
        }
        mt.f(obj, "Unexpected child source info ");
        return null;
    }

    public abstract GapGroupSourceInformation f(Anchor anchor);
}
