.class final Landroidx/compose/ui/layout/InnerRectRulers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/RectRulers;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/layout/InnerRectRulers;",
        "Landroidx/compose/ui/layout/RectRulers;",
        "",
        "rulers",
        "<init>",
        "([Landroidx/compose/ui/layout/RectRulers;)V",
        "ui"
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
.field public final a:[Landroidx/compose/ui/layout/RectRulers;

.field public final b:Landroidx/compose/ui/layout/VerticalRuler;

.field public final c:Landroidx/compose/ui/layout/HorizontalRuler;

.field public final d:Landroidx/compose/ui/layout/VerticalRuler;

.field public final e:Landroidx/compose/ui/layout/HorizontalRuler;


# direct methods
.method public constructor <init>([Landroidx/compose/ui/layout/RectRulers;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    sget-object v0, Landroidx/compose/ui/layout/VerticalRuler;->b:Landroidx/compose/ui/layout/VerticalRuler$Companion;

    array-length p1, p1

    new-array v1, p1, [Landroidx/compose/ui/layout/VerticalRuler;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/compose/ui/layout/RectRulers;->a()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler$Companion$maxOf$1;

    invoke-direct {p1, v1}, Landroidx/compose/ui/layout/VerticalRuler$Companion$maxOf$1;-><init>([Landroidx/compose/ui/layout/VerticalRuler;)V

    new-instance v0, Landroidx/compose/ui/layout/VerticalRuler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->b:Landroidx/compose/ui/layout/VerticalRuler;

    sget-object p1, Landroidx/compose/ui/layout/HorizontalRuler;->b:Landroidx/compose/ui/layout/HorizontalRuler$Companion;

    iget-object v0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    array-length v0, v0

    new-array v3, v0, [Landroidx/compose/ui/layout/HorizontalRuler;

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    aget-object v5, v5, v4

    invoke-interface {v5}, Landroidx/compose/ui/layout/RectRulers;->b()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/compose/ui/layout/HorizontalRuler;

    new-instance v0, Landroidx/compose/ui/layout/HorizontalRuler$Companion$maxOf$1;

    invoke-direct {v0, v3}, Landroidx/compose/ui/layout/HorizontalRuler$Companion$maxOf$1;-><init>([Landroidx/compose/ui/layout/HorizontalRuler;)V

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/layout/HorizontalRuler;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/InnerRectRulers;->c:Landroidx/compose/ui/layout/HorizontalRuler;

    sget-object p1, Landroidx/compose/ui/layout/VerticalRuler;->b:Landroidx/compose/ui/layout/VerticalRuler$Companion;

    iget-object v0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    array-length v0, v0

    new-array v3, v0, [Landroidx/compose/ui/layout/VerticalRuler;

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_2

    iget-object v5, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    aget-object v5, v5, v4

    invoke-interface {v5}, Landroidx/compose/ui/layout/RectRulers;->d()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler$Companion$minOf$1;

    invoke-direct {p1, v3}, Landroidx/compose/ui/layout/VerticalRuler$Companion$minOf$1;-><init>([Landroidx/compose/ui/layout/VerticalRuler;)V

    new-instance v0, Landroidx/compose/ui/layout/VerticalRuler;

    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->d:Landroidx/compose/ui/layout/VerticalRuler;

    sget-object p1, Landroidx/compose/ui/layout/HorizontalRuler;->b:Landroidx/compose/ui/layout/HorizontalRuler$Companion;

    iget-object v0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    array-length v0, v0

    new-array v3, v0, [Landroidx/compose/ui/layout/HorizontalRuler;

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    aget-object v4, v4, v2

    invoke-interface {v4}, Landroidx/compose/ui/layout/RectRulers;->c()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/compose/ui/layout/HorizontalRuler;

    new-instance v0, Landroidx/compose/ui/layout/HorizontalRuler$Companion$minOf$1;

    invoke-direct {v0, v3}, Landroidx/compose/ui/layout/HorizontalRuler$Companion$minOf$1;-><init>([Landroidx/compose/ui/layout/HorizontalRuler;)V

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/layout/HorizontalRuler;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/InnerRectRulers;->e:Landroidx/compose/ui/layout/HorizontalRuler;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->b:Landroidx/compose/ui/layout/VerticalRuler;

    return-object p0
.end method

.method public final b()Landroidx/compose/ui/layout/HorizontalRuler;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->c:Landroidx/compose/ui/layout/HorizontalRuler;

    return-object p0
.end method

.method public final c()Landroidx/compose/ui/layout/HorizontalRuler;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->e:Landroidx/compose/ui/layout/HorizontalRuler;

    return-object p0
.end method

.method public final d()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->d:Landroidx/compose/ui/layout/VerticalRuler;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/16 v5, 0x39

    iget-object v0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    const/4 v1, 0x0

    const-string v2, "innermostOf("

    const-string v3, ")"

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->H([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
