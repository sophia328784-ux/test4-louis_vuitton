package retrofit2.adapter.rxjava3;

import defpackage.md;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Single;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import retrofit2.CallAdapter;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
public final class RxJava3CallAdapterFactory extends CallAdapter.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f79494a = true;

    @Override // retrofit2.CallAdapter.Factory
    public final CallAdapter a(Type type, Annotation[] annotationArr) {
        Type typeB;
        boolean z;
        boolean z2;
        String str;
        Class clsC = CallAdapter.Factory.c(type);
        if (clsC == Completable.class) {
            return new RxJava3CallAdapter(Void.class, this.f79494a, false, true, false, false, false, true);
        }
        boolean z3 = clsC == Flowable.class;
        boolean z4 = clsC == Single.class;
        boolean z5 = clsC == Maybe.class;
        if (clsC != Observable.class && !z3 && !z4 && !z5) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            if (z3) {
                str = "Flowable";
            } else if (z4) {
                str = "Single";
            } else {
                str = z5 ? "Maybe" : "Observable";
            }
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type typeB2 = CallAdapter.Factory.b((ParameterizedType) type);
        Class clsC2 = CallAdapter.Factory.c(typeB2);
        if (clsC2 == Response.class) {
            if (!(typeB2 instanceof ParameterizedType)) {
                md.k("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
                return null;
            }
            typeB = CallAdapter.Factory.b((ParameterizedType) typeB2);
            z2 = false;
            z = false;
        } else if (clsC2 != Result.class) {
            typeB = typeB2;
            z = true;
            z2 = false;
        } else {
            if (!(typeB2 instanceof ParameterizedType)) {
                md.k("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
                return null;
            }
            typeB = CallAdapter.Factory.b((ParameterizedType) typeB2);
            z2 = true;
            z = false;
        }
        return new RxJava3CallAdapter(typeB, this.f79494a, z2, z, z3, z4, z5, false);
    }
}
