package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ai;
import com.perfectcorp.thirdparty.com.google.common.collect.al;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
abstract class j<V, C> extends f<V, C> {

    public static final class b<V> extends j<V, List<V>> {

        public final class a extends j<V, List<V>>.a {
            public a(ai<? extends ListenableFuture<? extends V>> aiVar, boolean z) {
                super(aiVar, z);
            }

            @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.j.a
            public final Object a(List list) {
                int size = list.size();
                al.a.c(size, "initialArraySize");
                ArrayList arrayList = new ArrayList(size);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Optional optional = (Optional) it.next();
                    arrayList.add(optional != null ? optional.g() : null);
                }
                return Collections.unmodifiableList(arrayList);
            }
        }

        public b(ImmutableList immutableList, boolean z) {
            a aVar = new a(immutableList, z);
            this.f42417e = aVar;
            f.a.b((f.a) aVar);
        }
    }

    public abstract class a extends f<V, C>.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<Optional<V>> f42428a;

        public a(ai<? extends ListenableFuture<? extends V>> aiVar, boolean z) {
            List<Optional<V>> arrayList;
            super(aiVar, z, true);
            if (aiVar.isEmpty()) {
                arrayList = ImmutableList.x();
            } else {
                int size = aiVar.size();
                al.a.c(size, "initialArraySize");
                arrayList = new ArrayList(size);
            }
            this.f42428a = arrayList;
            for (int i2 = 0; i2 < aiVar.size(); i2++) {
                this.f42428a.add(null);
            }
        }

        public abstract C a(List<Optional<V>> list);

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.f.a
        public final void a(boolean z, int i2, V v) {
            List<Optional<V>> list = this.f42428a;
            if (list != null) {
                list.set(i2, Optional.b(v));
            } else {
                Preconditions.h("Future was done before all dependencies completed", z || j.this.isCancelled());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.f.a
        public final void b() {
            List<Optional<V>> list = this.f42428a;
            j jVar = j.this;
            if (list != null) {
                jVar.set(a(list));
            } else {
                Preconditions.i(jVar.isDone());
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.f.a
        public final void a() {
            super.a();
            this.f42428a = null;
        }
    }
}
