.class public abstract Lcom/otaliastudios/opengl/draw/GlDrawable;
.super Lcom/otaliastudios/opengl/core/GlViewportAware;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/draw/GlDrawable;",
        "Lcom/otaliastudios/opengl/core/GlViewportAware;",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/otaliastudios/opengl/core/GlViewportAware;-><init>()V

    sget-object v0, Lcom/otaliastudios/opengl/core/Egloo;->a:[F

    invoke-static {v0}, Lcom/otaliastudios/opengl/internal/MiscKt;->a([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/draw/GlDrawable;->a:[F

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/nio/FloatBuffer;
.end method
