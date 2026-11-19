.class public final Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/font/PlatformFontLoader;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;",
        "Landroidx/compose/ui/text/font/PlatformFontLoader;",
        "Landroidx/compose/ui/text/font/Font$ResourceLoader;",
        "loader",
        "<init>",
        "(Landroidx/compose/ui/text/font/Font$ResourceLoader;)V",
        "ui-text"
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
.field public final a:Landroidx/compose/ui/text/font/Font$ResourceLoader;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/Font$ResourceLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->a:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->a:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/font/Font$ResourceLoader;->a(Landroidx/compose/ui/text/font/Font;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->a:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/font/Font$ResourceLoader;->a(Landroidx/compose/ui/text/font/Font;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
