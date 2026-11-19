.class public abstract Landroidx/compose/material3/tokens/TypefaceTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/tokens/TypefaceTokens;",
        "",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final b:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final c:Landroidx/compose/ui/text/font/FontWeight;

.field public static final d:Landroidx/compose/ui/text/font/FontWeight;

.field public static final e:Landroidx/compose/ui/text/font/FontWeight;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->b:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->d:Landroidx/compose/ui/text/font/GenericFontFamily;

    sput-object v0, Landroidx/compose/material3/tokens/TypefaceTokens;->a:Landroidx/compose/ui/text/font/GenericFontFamily;

    sput-object v0, Landroidx/compose/material3/tokens/TypefaceTokens;->b:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->k:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypefaceTokens;->c:Landroidx/compose/ui/text/font/FontWeight;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->i:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypefaceTokens;->d:Landroidx/compose/ui/text/font/FontWeight;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypefaceTokens;->e:Landroidx/compose/ui/text/font/FontWeight;

    return-void
.end method
