.class public abstract Lcom/vuitton/android/presentation/compose/theme/LVFontFamily;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/compose/theme/LVFontFamily;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public static final b:Landroidx/compose/ui/text/font/FontListFontFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v0, 0x7f09000f

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/text/font/FontKt;->a(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Landroidx/compose/ui/text/font/Font;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v4}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    const/high16 v0, 0x7f090000

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/text/font/FontKt;->a(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    move-result-object v0

    new-array v1, v3, [Landroidx/compose/ui/text/font/Font;

    aput-object v0, v1, v5

    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/vuitton/android/presentation/compose/theme/LVFontFamily;->a:Landroidx/compose/ui/text/font/FontListFontFamily;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    const v1, 0x7f09000c

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Landroidx/compose/ui/text/font/FontKt;->a(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    move-result-object v0

    const v1, 0x7f090009

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->i:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v1, v4, v2}, Landroidx/compose/ui/text/font/FontKt;->a(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    move-result-object v1

    const v4, 0x7f090007

    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->g:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v4, v6, v2}, Landroidx/compose/ui/text/font/FontKt;->a(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    move-result-object v4

    const v6, 0x7f090003

    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->k:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v6, v7, v2}, Landroidx/compose/ui/text/font/FontKt;->a(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    move-result-object v2

    const/4 v6, 0x4

    new-array v6, v6, [Landroidx/compose/ui/text/font/Font;

    aput-object v0, v6, v5

    aput-object v1, v6, v3

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/vuitton/android/presentation/compose/theme/LVFontFamily;->b:Landroidx/compose/ui/text/font/FontListFontFamily;

    return-void
.end method
