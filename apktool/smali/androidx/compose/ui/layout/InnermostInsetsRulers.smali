.class final Landroidx/compose/ui/layout/InnermostInsetsRulers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/WindowInsetsRulers;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/ui/layout/InnermostInsetsRulers;",
        "Landroidx/compose/ui/layout/WindowInsetsRulers;",
        "",
        "name",
        "",
        "rulers",
        "<init>",
        "(Ljava/lang/String;[Landroidx/compose/ui/layout/WindowInsetsRulers;)V",
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
.field public final b:Ljava/lang/String;

.field public final c:[Landroidx/compose/ui/layout/WindowInsetsRulers;

.field public final d:Landroidx/compose/ui/layout/RectRulers;

.field public final e:Landroidx/compose/ui/layout/RectRulers;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Landroidx/compose/ui/layout/WindowInsetsRulers;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->b:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->c:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    invoke-interface {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers;->b()Landroidx/compose/ui/layout/RectRulers;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p2, v1, [Landroidx/compose/ui/layout/RectRulers;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/compose/ui/layout/RectRulers;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/compose/ui/layout/RectRulers;

    new-instance p2, Landroidx/compose/ui/layout/InnerRectRulers;

    invoke-direct {p2, p1}, Landroidx/compose/ui/layout/InnerRectRulers;-><init>([Landroidx/compose/ui/layout/RectRulers;)V

    iput-object p2, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->d:Landroidx/compose/ui/layout/RectRulers;

    iget-object p1, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->c:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers;->a()Landroidx/compose/ui/layout/RectRulers;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-array p1, v1, [Landroidx/compose/ui/layout/RectRulers;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/compose/ui/layout/RectRulers;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/compose/ui/layout/RectRulers;

    new-instance p2, Landroidx/compose/ui/layout/InnerRectRulers;

    invoke-direct {p2, p1}, Landroidx/compose/ui/layout/InnerRectRulers;-><init>([Landroidx/compose/ui/layout/RectRulers;)V

    iput-object p2, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->e:Landroidx/compose/ui/layout/RectRulers;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/layout/RectRulers;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->e:Landroidx/compose/ui/layout/RectRulers;

    return-object p0
.end method

.method public final b()Landroidx/compose/ui/layout/RectRulers;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->d:Landroidx/compose/ui/layout/RectRulers;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/16 v6, 0x39

    iget-object v1, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->c:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    const/4 v2, 0x0

    const-string v3, "innermostOf("

    const-string v4, ")"

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->H([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method
