package androidx.media3.session;

import android.content.res.Resources;
import com.google.common.base.Supplier;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f1 implements Supplier {
    @Override // com.google.common.base.Supplier
    public final Object get() {
        SessionResult sessionResult = MediaSessionImpl.F;
        Resources system = Resources.getSystem();
        int dimensionPixelSize = system.getDisplayMetrics().widthPixels;
        try {
            dimensionPixelSize = system.getDimensionPixelSize(system.getIdentifier("config_mediaMetadataBitmapMaxSize", "dimen", ReferenceApiV3ConstKt.OS_NAME));
        } catch (Resources.NotFoundException unused) {
        }
        return Integer.valueOf(dimensionPixelSize);
    }
}
