.class public abstract Lcom/otaliastudios/opengl/draw/Gl2dDrawable;
.super Lcom/otaliastudios/opengl/draw/GlDrawable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/draw/Gl2dDrawable;",
        "Lcom/otaliastudios/opengl/draw/GlDrawable;",
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
.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->b:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->b:I

    return p0
.end method
