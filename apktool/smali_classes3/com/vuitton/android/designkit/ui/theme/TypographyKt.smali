.class public abstract Lcom/vuitton/android/designkit/ui/theme/TypographyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "system"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    const v1, 0x7f090014

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Landroidx/compose/ui/text/font/FontKt;->a(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    move-result-object v0

    const v1, 0x7f090011

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->i:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v1, v3, v2}, Landroidx/compose/ui/text/font/FontKt;->a(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    move-result-object v1

    const v3, 0x7f09000f

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->g:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v3, v4, v2}, Landroidx/compose/ui/text/font/FontKt;->a(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Landroidx/compose/ui/text/font/Font;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/TypographyKt;->a:Landroidx/compose/ui/text/font/FontListFontFamily;

    new-instance v0, Lb51;

    invoke-direct {v0, v3}, Lb51;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/TypographyKt;->b:Lkotlin/Lazy;

    new-instance v0, Lb51;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lb51;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/TypographyKt;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method
