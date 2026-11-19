.class public Lcom/otaliastudios/opengl/program/GlProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/otaliastudios/opengl/core/GlBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlProgram$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u000eB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\tB\u001d\u0008\u0016\u0012\u0012\u0010\u000c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\n\"\u00020\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/program/GlProgram;",
        "Lcom/otaliastudios/opengl/core/GlBindable;",
        "",
        "handle",
        "<init>",
        "(I)V",
        "",
        "vertexShader",
        "fragmentShader",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "Lcom/otaliastudios/opengl/program/GlShader;",
        "shaders",
        "([Lcom/otaliastudios/opengl/program/GlShader;)V",
        "Companion",
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
.field public static final e:Lcom/otaliastudios/opengl/program/GlProgram$Companion;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:[Lcom/otaliastudios/opengl/program/GlShader;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->e:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    .line 31
    new-array v1, v0, [Lcom/otaliastudios/opengl/program/GlShader;

    invoke-direct {p0, p1, v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;-><init>(IZ[Lcom/otaliastudios/opengl/program/GlShader;)V

    return-void
.end method

.method public varargs constructor <init>(IZ[Lcom/otaliastudios/opengl/program/GlShader;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->a:I

    .line 41
    iput-boolean p2, p0, Lcom/otaliastudios/opengl/program/GlProgram;->b:Z

    .line 42
    iput-object p3, p0, Lcom/otaliastudios/opengl/program/GlProgram;->c:[Lcom/otaliastudios/opengl/program/GlShader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v0, Lcom/otaliastudios/opengl/program/GlShader;

    .line 33
    sget v1, Lcom/otaliastudios/opengl/internal/GlKt;->p:I

    .line 34
    invoke-direct {v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(ILjava/lang/String;)V

    .line 35
    new-instance p1, Lcom/otaliastudios/opengl/program/GlShader;

    .line 36
    sget v1, Lcom/otaliastudios/opengl/internal/GlKt;->q:I

    .line 37
    invoke-direct {p1, v1, p2}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(ILjava/lang/String;)V

    filled-new-array {v0, p1}, [Lcom/otaliastudios/opengl/program/GlShader;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/otaliastudios/opengl/program/GlProgram;-><init>([Lcom/otaliastudios/opengl/program/GlShader;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/otaliastudios/opengl/program/GlShader;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/opengl/program/GlShader;

    sget-object v1, Lcom/otaliastudios/opengl/program/GlProgram;->e:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;->a([Lcom/otaliastudios/opengl/program/GlShader;)I

    move-result v0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/otaliastudios/opengl/program/GlShader;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlProgram;-><init>(IZ[Lcom/otaliastudios/opengl/program/GlShader;)V

    return-void
.end method
