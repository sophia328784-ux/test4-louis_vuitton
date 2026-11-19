package com.vuitton.android.presentation.screen.plp.models;

import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType;", "", "ClassicPlp", "ThematicPlp", "Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType$ClassicPlp;", "Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType$ThematicPlp;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DisplayedPLPType {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType$ClassicPlp;", "Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClassicPlp extends DisplayedPLPType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ClassicPlp f62871a = new ClassicPlp(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ClassicPlp);
        }

        public final int hashCode() {
            return 363452056;
        }

        public final String toString() {
            return "ClassicPlp";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType$ThematicPlp;", "Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType;", "", "Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;", "plpEntryList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ThematicPlp extends DisplayedPLPType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62872a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ThematicPlp(List<PLPEntryUiModel> list) {
            super(null);
            list.getClass();
            this.f62872a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ThematicPlp) && Intrinsics.c(this.f62872a, ((ThematicPlp) obj).f62872a);
        }

        public final int hashCode() {
            return this.f62872a.hashCode();
        }

        public final String toString() {
            return d21.o("ThematicPlp(plpEntryList=", ")", this.f62872a);
        }
    }

    public DisplayedPLPType(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
