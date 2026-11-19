package com.sightcall.advancedannotations.domain.drawer;

import com.batch.android.s.b;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", "", "<init>", "()V", "All", "Specific", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AnnotationId {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", "<init>", "()V", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class All extends AnnotationId {
        public static final All INSTANCE = new All();

        private All() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0000H\u0086\u0002J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", b.a.f24015b, "", "<init>", "(I)V", "getId", "()I", "inc", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Specific extends AnnotationId {
        private final int id;

        public Specific(int i2) {
            super(null);
            this.id = i2;
        }

        public static /* synthetic */ Specific copy$default(Specific specific, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i2 = specific.id;
            }
            return specific.copy(i2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getId() {
            return this.id;
        }

        public final Specific copy(int id) {
            return new Specific(id);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Specific) && this.id == ((Specific) other).id;
        }

        public final int getId() {
            return this.id;
        }

        public int hashCode() {
            return Integer.hashCode(this.id);
        }

        public final Specific inc() {
            return new Specific(this.id + 1);
        }

        public String toString() {
            return n00.m(this.id, "Specific(id=", ")");
        }
    }

    public /* synthetic */ AnnotationId(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AnnotationId() {
    }
}
