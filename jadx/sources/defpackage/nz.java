package defpackage;

import android.os.Bundle;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.Placeable;
import androidx.navigation.NavGraphNavigator;
import java.time.LocalDate;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nz implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f76643c;

    public /* synthetic */ nz(int i2, Ref$ObjectRef ref$ObjectRef) {
        this.f76642b = i2;
        this.f76643c = ref$ObjectRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76642b;
        Ref$ObjectRef ref$ObjectRef = this.f76643c;
        switch (i2) {
            case 0:
                int i3 = FlowLayoutKt.f4978a;
                ref$ObjectRef.f71921b = (Placeable) obj;
                return Unit.f71739a;
            case 1:
                int i4 = FlowLayoutKt.f4978a;
                ref$ObjectRef.f71921b = (Placeable) obj;
                return Unit.f71739a;
            case 2:
                ref$ObjectRef.f71921b = (Offset) obj;
                return Unit.f71739a;
            case 3:
                String str = (String) obj;
                int i5 = NavGraphNavigator.d;
                str.getClass();
                Object obj2 = ref$ObjectRef.f71921b;
                return Boolean.valueOf(obj2 == null || !((Bundle) obj2).containsKey(str));
            default:
                LocalDate localDate = (LocalDate) obj;
                localDate.getClass();
                ref$ObjectRef.f71921b = localDate;
                return Unit.f71739a;
        }
    }
}
