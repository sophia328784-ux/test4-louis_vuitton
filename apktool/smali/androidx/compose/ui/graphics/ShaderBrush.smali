.class public abstract Landroidx/compose/ui/graphics/ShaderBrush;
.super Landroidx/compose/ui/graphics/Brush;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/ShaderBrush;",
        "Landroidx/compose/ui/graphics/Brush;",
        "<init>",
        "()V",
        "ui-graphics"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:Landroidx/compose/ui/graphics/TransformShader;

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/Brush;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Size;->c:J

    iput-wide v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->c:J

    return-void
.end method


# virtual methods
.method public final a(FJLandroidx/compose/ui/graphics/Paint;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->b:Landroidx/compose/ui/graphics/TransformShader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroidx/compose/ui/graphics/ShaderBrush;->c:J

    invoke-static {v2, v3, p2, p3}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->e(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Landroidx/compose/ui/graphics/ShaderBrush;->b:Landroidx/compose/ui/graphics/TransformShader;

    sget-object p2, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p2, Landroidx/compose/ui/geometry/Size;->c:J

    iput-wide p2, p0, Landroidx/compose/ui/graphics/ShaderBrush;->c:J

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->b:Landroidx/compose/ui/graphics/TransformShader;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/compose/ui/graphics/TransformShader;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/TransformShader;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->b:Landroidx/compose/ui/graphics/TransformShader;

    :cond_2
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/graphics/ShaderBrush;->b(J)Landroid/graphics/Shader;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/ui/graphics/TransformShader;->a:Landroid/graphics/Shader;

    iput-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->b:Landroidx/compose/ui/graphics/TransformShader;

    iput-wide p2, p0, Landroidx/compose/ui/graphics/ShaderBrush;->c:J

    :cond_3
    :goto_0
    invoke-interface {p4}, Landroidx/compose/ui/graphics/Paint;->b()J

    move-result-wide p2

    sget-object p0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->c:J

    invoke-static {p2, p3, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {p4, v2, v3}, Landroidx/compose/ui/graphics/Paint;->c(J)V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/ui/graphics/Paint;->g()Landroid/graphics/Shader;

    move-result-object p0

    if-eqz v0, :cond_5

    iget-object p2, v0, Landroidx/compose/ui/graphics/TransformShader;->a:Landroid/graphics/Shader;

    goto :goto_1

    :cond_5
    move-object p2, v1

    :goto_1
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    if-eqz v0, :cond_6

    iget-object v1, v0, Landroidx/compose/ui/graphics/TransformShader;->a:Landroid/graphics/Shader;

    :cond_6
    invoke-interface {p4, v1}, Landroidx/compose/ui/graphics/Paint;->f(Landroid/graphics/Shader;)V

    :cond_7
    invoke-interface {p4}, Landroidx/compose/ui/graphics/Paint;->a()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_8

    return-void

    :cond_8
    invoke-interface {p4, p1}, Landroidx/compose/ui/graphics/Paint;->d(F)V

    return-void
.end method

.method public abstract b(J)Landroid/graphics/Shader;
.end method
