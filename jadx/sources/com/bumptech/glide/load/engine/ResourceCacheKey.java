package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
final class ResourceCacheKey implements Key {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final LruCache f24546j = new LruCache(50);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayPool f24547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Key f24548c;
    public final Key d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f24549e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f24550f;
    public final Class g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Options f24551h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Transformation f24552i;

    public ResourceCacheKey(ArrayPool arrayPool, Key key, Key key2, int i2, int i3, Transformation transformation, Class cls, Options options) {
        this.f24547b = arrayPool;
        this.f24548c = key;
        this.d = key2;
        this.f24549e = i2;
        this.f24550f = i3;
        this.f24552i = transformation;
        this.g = cls;
        this.f24551h = options;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        ArrayPool arrayPool = this.f24547b;
        byte[] bArr = (byte[]) arrayPool.d();
        ByteBuffer.wrap(bArr).putInt(this.f24549e).putInt(this.f24550f).array();
        this.d.b(messageDigest);
        this.f24548c.b(messageDigest);
        messageDigest.update(bArr);
        Transformation transformation = this.f24552i;
        if (transformation != null) {
            transformation.b(messageDigest);
        }
        this.f24551h.b(messageDigest);
        LruCache lruCache = f24546j;
        Class cls = this.g;
        byte[] bytes = (byte[]) lruCache.f(cls);
        if (bytes == null) {
            bytes = cls.getName().getBytes(Key.f24395a);
            lruCache.i(cls, bytes);
        }
        messageDigest.update(bytes);
        arrayPool.put(bArr);
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof ResourceCacheKey) {
            ResourceCacheKey resourceCacheKey = (ResourceCacheKey) obj;
            if (this.f24550f == resourceCacheKey.f24550f && this.f24549e == resourceCacheKey.f24549e && Util.b(this.f24552i, resourceCacheKey.f24552i) && this.g.equals(resourceCacheKey.g) && this.f24548c.equals(resourceCacheKey.f24548c) && this.d.equals(resourceCacheKey.d) && this.f24551h.equals(resourceCacheKey.f24551h)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        int iHashCode = ((((this.d.hashCode() + (this.f24548c.hashCode() * 31)) * 31) + this.f24549e) * 31) + this.f24550f;
        Transformation transformation = this.f24552i;
        if (transformation != null) {
            iHashCode = (iHashCode * 31) + transformation.hashCode();
        }
        int iHashCode2 = this.g.hashCode();
        return this.f24551h.f24400b.hashCode() + ((iHashCode2 + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f24548c + ", signature=" + this.d + ", width=" + this.f24549e + ", height=" + this.f24550f + ", decodedResourceClass=" + this.g + ", transformation='" + this.f24552i + "', options=" + this.f24551h + '}';
    }
}
