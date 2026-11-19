package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;", "", "Timecode", "Skip", "Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Skip;", "Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Timecode;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
interface TooltipContent {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Skip;", "Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;", "", "label", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Skip implements TooltipContent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53107a;

        public Skip(String str) {
            str.getClass();
            this.f53107a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Skip) && Intrinsics.c(this.f53107a, ((Skip) obj).f53107a);
        }

        public final int hashCode() {
            return this.f53107a.hashCode();
        }

        public final String toString() {
            return fc.h("Skip(label=", this.f53107a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Timecode;", "Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;", "", "positionMs", "<init>", "(J)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Timecode implements TooltipContent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f53108a;

        public Timecode(long j2) {
            this.f53108a = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Timecode) && this.f53108a == ((Timecode) obj).f53108a;
        }

        public final int hashCode() {
            return Long.hashCode(this.f53108a);
        }

        public final String toString() {
            return o60.i(this.f53108a, "Timecode(positionMs=", ")");
        }
    }
}
