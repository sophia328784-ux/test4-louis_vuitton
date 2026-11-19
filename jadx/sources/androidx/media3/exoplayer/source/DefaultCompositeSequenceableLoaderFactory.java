package androidx.media3.exoplayer.source;

import com.google.common.collect.ImmutableList;
import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultCompositeSequenceableLoaderFactory implements CompositeSequenceableLoaderFactory {
    @Override // androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory
    public final CompositeSequenceableLoader a(List list, AbstractList abstractList) {
        return new CompositeSequenceableLoader(list, abstractList);
    }

    @Override // androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory
    public final CompositeSequenceableLoader empty() {
        return new CompositeSequenceableLoader(ImmutableList.x(), ImmutableList.x());
    }
}
