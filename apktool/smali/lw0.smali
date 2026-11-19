.class public final synthetic Llw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/SingletonImageLoader$Factory;


# virtual methods
.method public final b(Landroid/content/Context;)Lcoil3/RealImageLoader;
    .locals 2

    sget-object p0, Lcoil3/SingletonImageLoaderKt;->a:Llw0;

    new-instance p0, Lcoil3/ImageLoader$Builder;

    invoke-direct {p0, p1}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcoil3/SingletonImageLoaderKt;->b:Lcoil3/Extras$Key;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v1, p0, Lcoil3/ImageLoader$Builder;->i:Lcoil3/Extras$Builder;

    invoke-virtual {v1, p1, v0}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->a()Lcoil3/RealImageLoader;

    move-result-object p0

    return-object p0
.end method
