package androidx.media3.exoplayer.hls;

import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import defpackage.uh;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function {
    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        HlsSampleStreamWrapper hlsSampleStreamWrapper = (HlsSampleStreamWrapper) obj;
        hlsSampleStreamWrapper.x();
        return ImmutableList.t(Lists.d(new uh(15), hlsSampleStreamWrapper.J.f15637b));
    }
}
