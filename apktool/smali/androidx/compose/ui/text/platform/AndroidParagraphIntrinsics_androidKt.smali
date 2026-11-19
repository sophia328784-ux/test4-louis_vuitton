.class public abstract Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui-text"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/text/TextStyle;)Z
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/PlatformTextStyle;->b:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->b:I

    new-instance v0, Landroidx/compose/ui/text/EmojiSupportMatch;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object p0, Landroidx/compose/ui/text/EmojiSupportMatch;->b:Landroidx/compose/ui/text/EmojiSupportMatch$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/text/EmojiSupportMatch;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, v0, Landroidx/compose/ui/text/EmojiSupportMatch;->a:I

    if-ne v0, p0, :cond_2

    move v2, v1

    :cond_2
    :goto_1
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method
