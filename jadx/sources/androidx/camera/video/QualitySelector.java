package androidx.camera.video;

import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class QualitySelector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f2776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FallbackStrategy f2777b;

    public QualitySelector(List list, FallbackStrategy fallbackStrategy) {
        Preconditions.b((list.isEmpty() && fallbackStrategy == FallbackStrategy.f2757a) ? false : true, "No preferred quality and fallback strategy.");
        this.f2776a = Collections.unmodifiableList(new ArrayList(list));
        this.f2777b = fallbackStrategy;
    }

    public static QualitySelector a(List list, FallbackStrategy fallbackStrategy) {
        Preconditions.e(list, "qualities cannot be null");
        Preconditions.b(!list.isEmpty(), "qualities cannot be empty");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Quality quality = (Quality) it.next();
            Preconditions.b(Quality.f2771h.contains(quality), "qualities contain invalid quality: " + quality);
        }
        return new QualitySelector(list, fallbackStrategy);
    }

    public final String toString() {
        return "QualitySelector{preferredQualities=" + this.f2776a + ", fallbackStrategy=" + this.f2777b + "}";
    }
}
