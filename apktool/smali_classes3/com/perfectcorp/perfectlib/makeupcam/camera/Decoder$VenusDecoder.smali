.class public abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VenusDecoder"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/core/BaseVenus;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    return-void
.end method
