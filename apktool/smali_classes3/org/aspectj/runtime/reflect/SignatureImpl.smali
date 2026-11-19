.class abstract Lorg/aspectj/runtime/reflect/SignatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/Signature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;,
        Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;
    }
.end annotation


# static fields
.field public static h:Z = true


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Class;

.field public e:Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final b(I)Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->f:Ljava/lang/String;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-lez p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move p1, v3

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)[Ljava/lang/Class;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->b(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array v1, p1, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iput-object v4, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    :cond_0
    iget-object v4, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    invoke-static {v4, v3}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->e:Lorg/aspectj/runtime/reflect/StringMaker;

    sget-boolean v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->e:Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;

    invoke-direct {v0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;-><init>()V

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->e:Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v1, Lorg/aspectj/runtime/reflect/SignatureImpl;->h:Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    aget-object v2, v0, v1

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->a()Ljava/lang/String;

    move-result-object v2

    :cond_3
    sget-boolean v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->h:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->e:Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->a:Ljava/lang/ref/SoftReference;

    :cond_4
    aput-object v2, v0, v1

    :cond_5
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->e:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
