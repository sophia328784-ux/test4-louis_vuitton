package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureContext;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasuredItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.IntOffset;
import com.linkplay.medialib.server.HttpServer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j90 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71343b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f71344c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f71346f;
    public final /* synthetic */ Object g;

    public /* synthetic */ j90(Context context, ResolveInfo resolveInfo, boolean z, String str, long j2) {
        this.f71345e = context;
        this.f71346f = resolveInfo;
        this.f71344c = z;
        this.g = str;
        this.d = j2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71343b;
        Object obj2 = this.g;
        Object obj3 = this.f71346f;
        Object obj4 = this.f71345e;
        switch (i2) {
            case 0:
                final ArrayList arrayList = (ArrayList) obj3;
                final LazyLayoutMeasureScope lazyLayoutMeasureScope = (LazyLayoutMeasureScope) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                final boolean z = this.f71344c;
                final long j2 = this.d;
                Function1 function1 = new Function1() { // from class: k90
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        GraphicsLayer graphicsLayer;
                        int i3;
                        int i4;
                        Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj5;
                        ArrayList arrayList2 = arrayList;
                        int size = arrayList2.size();
                        int i5 = 0;
                        while (i5 < size) {
                            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) arrayList2.get(i5);
                            boolean zU0 = lazyLayoutMeasureScope.u0();
                            boolean z2 = lazyStaggeredGridMeasuredItem.d;
                            if (lazyStaggeredGridMeasuredItem.o == Integer.MIN_VALUE) {
                                InlineClassHelperKt.a("position() should be called first");
                            }
                            List list = lazyStaggeredGridMeasuredItem.f5645c;
                            int size2 = list.size();
                            int i6 = 0;
                            while (i6 < size2) {
                                Placeable placeable = (Placeable) list.get(i6);
                                int i7 = lazyStaggeredGridMeasuredItem.p - (z2 ? placeable.f9549c : placeable.f9548b);
                                int i8 = lazyStaggeredGridMeasuredItem.q;
                                int i9 = i5;
                                long j3 = lazyStaggeredGridMeasuredItem.t;
                                ArrayList arrayList3 = arrayList2;
                                int i10 = size;
                                LazyLayoutItemAnimation lazyLayoutItemAnimationA = lazyStaggeredGridMeasuredItem.f5650j.a(i6, lazyStaggeredGridMeasuredItem.f5644b);
                                if (lazyLayoutItemAnimationA != null) {
                                    if (zU0) {
                                        lazyLayoutItemAnimationA.r = j3;
                                    } else {
                                        long j4 = lazyLayoutItemAnimationA.r;
                                        LazyLayoutItemAnimation.s.getClass();
                                        long jD = IntOffset.d(!IntOffset.b(j4, LazyLayoutItemAnimation.t) ? lazyLayoutItemAnimationA.r : j3, ((IntOffset) ((SnapshotMutableStateImpl) lazyLayoutItemAnimationA.q).getF10755b()).f11014a);
                                        if ((lazyStaggeredGridMeasuredItem.i(j3) <= i7 && lazyStaggeredGridMeasuredItem.i(jD) <= i7) || (lazyStaggeredGridMeasuredItem.i(j3) >= i8 && lazyStaggeredGridMeasuredItem.i(jD) >= i8)) {
                                            lazyLayoutItemAnimationA.b();
                                        }
                                        j3 = jD;
                                    }
                                    graphicsLayer = lazyLayoutItemAnimationA.n;
                                } else {
                                    zU0 = zU0;
                                    z2 = z2;
                                    list = list;
                                    size2 = size2;
                                    graphicsLayer = null;
                                }
                                if (z) {
                                    IntOffset.Companion companion = IntOffset.f11012b;
                                    if (z2) {
                                        i3 = (int) (j3 >> 32);
                                    } else {
                                        i3 = (lazyStaggeredGridMeasuredItem.o - ((int) (j3 >> 32))) - (z2 ? placeable.f9549c : placeable.f9548b);
                                    }
                                    if (z2) {
                                        i4 = (lazyStaggeredGridMeasuredItem.o - ((int) (j3 & BodyPartID.bodyIdMax))) - (z2 ? placeable.f9549c : placeable.f9548b);
                                    } else {
                                        i4 = (int) (j3 & BodyPartID.bodyIdMax);
                                    }
                                    j3 = (((long) i4) & BodyPartID.bodyIdMax) | (((long) i3) << 32);
                                }
                                long jD2 = IntOffset.d(j3, j2);
                                if (!zU0 && lazyLayoutItemAnimationA != null) {
                                    lazyLayoutItemAnimationA.m = jD2;
                                }
                                if (graphicsLayer != null) {
                                    Placeable.PlacementScope.C(placementScope2, placeable, jD2, graphicsLayer);
                                } else {
                                    Placeable.PlacementScope.B(placementScope2, placeable, jD2);
                                }
                                i6++;
                                zU0 = zU0;
                                i5 = i9;
                                arrayList2 = arrayList3;
                                size = i10;
                                z2 = z2;
                                list = list;
                                size2 = size2;
                            }
                            i5++;
                        }
                        return Unit.f71739a;
                    }
                };
                placementScope.f9552b = true;
                function1.invoke(placementScope);
                placementScope.f9552b = false;
                ((LazyStaggeredGridMeasureContext) obj4).f5613a.u.getF10755b();
                break;
            default:
                long j3 = this.d;
                String string = ((String) obj2).subSequence(TextRange.f(j3), TextRange.e(j3)).toString();
                Intent intentPutExtra = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType(HttpServer.MIME_PLAINTEXT).putExtra("android.intent.extra.PROCESS_TEXT_READONLY", this.f71344c);
                ActivityInfo activityInfo = ((ResolveInfo) obj3).activityInfo;
                Intent className = intentPutExtra.setClassName(activityInfo.packageName, activityInfo.name);
                className.putExtra("android.intent.extra.PROCESS_TEXT", string);
                ((Context) obj4).startActivity(className);
                ((TextContextMenuSession) obj).close();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ j90(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, ArrayList arrayList, boolean z, long j2, LazyLayoutMeasureScope lazyLayoutMeasureScope) {
        this.f71345e = lazyStaggeredGridMeasureContext;
        this.f71346f = arrayList;
        this.f71344c = z;
        this.d = j2;
        this.g = lazyLayoutMeasureScope;
    }
}
