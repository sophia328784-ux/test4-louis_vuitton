.class public abstract Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory$GainmapDecoderWorkaroundStateCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GainmapDecoderWorkaroundStateCalculator"
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laz;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Laz;-><init>(I)V

    invoke-static {v0}, Lcom/bumptech/glide/util/GlideSuppliers;->a(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;)Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory$GainmapDecoderWorkaroundStateCalculator;->a:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    return-void
.end method
