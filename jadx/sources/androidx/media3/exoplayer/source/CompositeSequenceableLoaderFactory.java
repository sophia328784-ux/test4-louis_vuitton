package androidx.media3.exoplayer.source;

import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CompositeSequenceableLoaderFactory {
    CompositeSequenceableLoader a(List list, AbstractList abstractList);

    CompositeSequenceableLoader empty();
}
