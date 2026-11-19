package androidx.media3.extractor.metadata.scte35;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SpliceScheduleCommand extends SpliceCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f16416a;

    public static final class ComponentSplice {
    }

    public static final class Event {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f16417a;

        public Event(ArrayList arrayList) {
            this.f16417a = Collections.unmodifiableList(arrayList);
        }
    }

    public SpliceScheduleCommand(ArrayList arrayList) {
        this.f16416a = Collections.unmodifiableList(arrayList);
    }
}
