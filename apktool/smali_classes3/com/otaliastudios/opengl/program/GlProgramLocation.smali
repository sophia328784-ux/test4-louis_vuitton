.class public final Lcom/otaliastudios/opengl/program/GlProgramLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlProgramLocation$Type;,
        Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;,
        Lcom/otaliastudios/opengl/program/GlProgramLocation$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/program/GlProgramLocation;",
        "",
        "Companion",
        "Type",
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


# static fields
.field public static final c:Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->c:Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/otaliastudios/opengl/program/GlProgramLocation$Type;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p4, Lcom/otaliastudios/opengl/program/GlProgramLocation$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p4, p2

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p2, p4, :cond_1

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    sget-object p2, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    throw v0

    :cond_1
    sget-object p2, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->a:I

    sget-object p2, Lcom/otaliastudios/opengl/core/Egloo;->a:[F

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_2

    iput p1, p0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->b:I

    return-void

    :cond_2
    const-string p0, "Unable to locate "

    const-string p1, " in program"

    invoke-static {p0, p3, p1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v0
.end method
