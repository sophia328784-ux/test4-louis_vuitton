package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.graphics.Bitmap;
import com.perfectcorp.perfectlib.VtoApplier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$configureSkinSmoothEffect$1", "Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BeautyVtoActivity$configureSkinSmoothEffect$1 implements VtoApplier.ApplyCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoActivity f61793a;

    public BeautyVtoActivity$configureSkinSmoothEffect$1(BeautyVtoActivity beautyVtoActivity) {
        this.f61793a = beautyVtoActivity;
    }

    @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
    public final void onFailure(Throwable th) {
        th.getClass();
        this.f61793a.L().c("CreateVtoApplier", "[setIntensities] failed.", th);
    }

    @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
    public final void onSuccess(Bitmap bitmap) {
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.f61793a.L();
    }
}
