package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.portal.components.ContentSlideStructureKt;
import com.vuitton.android.presentation.screen.portal.components.ContentSlideType;
import com.vuitton.android.presentation.screen.portal.components.PortalCoverKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class aq implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20584b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AssetUiModel f20585c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f20586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f20587f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f20588h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f20589i;

    public /* synthetic */ aq(float f2, float f3, boolean z, boolean z2, AssetUiModel assetUiModel, ContentSlideType contentSlideType, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.d = f2;
        this.f20586e = f3;
        this.f20587f = z;
        this.g = z2;
        this.f20585c = assetUiModel;
        this.f20588h = contentSlideType;
        this.f20589i = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20584b;
        Object obj3 = this.f20589i;
        Object obj4 = this.f20588h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1769473);
                ContentSlideStructureKt.a(this.d, this.f20586e, this.f20587f, this.g, this.f20585c, (ContentSlideType) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                PortalCoverKt.a((String) obj4, (String) obj3, this.f20585c, this.d, this.f20586e, this.f20587f, this.g, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ aq(String str, String str2, AssetUiModel assetUiModel, float f2, float f3, boolean z, boolean z2, int i2) {
        this.f20588h = str;
        this.f20589i = str2;
        this.f20585c = assetUiModel;
        this.d = f2;
        this.f20586e = f3;
        this.f20587f = z;
        this.g = z2;
    }
}
