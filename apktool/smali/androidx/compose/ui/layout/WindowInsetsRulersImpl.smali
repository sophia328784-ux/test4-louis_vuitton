.class final Landroidx/compose/ui/layout/WindowInsetsRulersImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/WindowInsetsRulers;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/layout/WindowInsetsRulersImpl;",
        "Landroidx/compose/ui/layout/WindowInsetsRulers;",
        "",
        "name",
        "<init>",
        "(Ljava/lang/String;)V",
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

.field public final c:Landroidx/compose/ui/layout/RectRulers;

.field public final d:Landroidx/compose/ui/layout/RectRulers;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->b:Ljava/lang/String;

    new-instance v0, Landroidx/compose/ui/layout/RectRulersImpl;

    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->c:Landroidx/compose/ui/layout/RectRulers;

    const-string v0, " maximum"

    invoke-static {p1, v0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroidx/compose/ui/layout/RectRulersImpl;

    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->d:Landroidx/compose/ui/layout/RectRulers;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/layout/RectRulers;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->d:Landroidx/compose/ui/layout/RectRulers;

    return-object p0
.end method

.method public final b()Landroidx/compose/ui/layout/RectRulers;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->c:Landroidx/compose/ui/layout/RectRulers;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->b:Ljava/lang/String;

    return-object p0
.end method
