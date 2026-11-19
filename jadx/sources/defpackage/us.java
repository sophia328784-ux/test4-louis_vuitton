package defpackage;

import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.metadata.id3.InternalFrame;
import com.google.common.base.Predicate;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class us implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80387b;

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        switch (this.f80387b) {
            case 0:
                return ((Map.Entry) obj).getKey() != null;
            case 1:
                return ((String) obj) != null;
            default:
                InternalFrame internalFrame = (InternalFrame) obj;
                Pattern pattern = GaplessInfoHolder.f16164c;
                return internalFrame.f16386b.equals("com.apple.iTunes") && internalFrame.f16387c.equals("iTunSMPB");
        }
    }
}
