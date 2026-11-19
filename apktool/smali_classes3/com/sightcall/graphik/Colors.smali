.class public final Lcom/sightcall/graphik/Colors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058G\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u00058G\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u00058G\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0007R\u0011\u0010\u000c\u001a\u00020\u00058G\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/graphik/Colors;",
        "",
        "<init>",
        "()V",
        "consentTitleTextColor",
        "Landroidx/compose/ui/graphics/Color;",
        "getConsentTitleTextColor",
        "(Landroidx/compose/runtime/Composer;I)J",
        "consentButtonBackground",
        "getConsentButtonBackground",
        "consentButtonTextColor",
        "getConsentButtonTextColor",
        "consentBodyTextColor",
        "getConsentBodyTextColor",
        "graphik_release"
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
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConsentBodyTextColor(Landroidx/compose/runtime/Composer;I)J
    .locals 0

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget p0, Lcom/sightcall/graphik/R$color;->universal_consentMainTextColor:I

    invoke-static {p1, p0}, Landroidx/compose/ui/res/ColorResources_androidKt;->a(Landroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getConsentButtonBackground(Landroidx/compose/runtime/Composer;I)J
    .locals 0

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget p0, Lcom/sightcall/graphik/R$color;->universal_consentBackgroundButton:I

    invoke-static {p1, p0}, Landroidx/compose/ui/res/ColorResources_androidKt;->a(Landroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getConsentButtonTextColor(Landroidx/compose/runtime/Composer;I)J
    .locals 0

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget p0, Lcom/sightcall/graphik/R$color;->universal_consentFullButtonTextColor:I

    invoke-static {p1, p0}, Landroidx/compose/ui/res/ColorResources_androidKt;->a(Landroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getConsentTitleTextColor(Landroidx/compose/runtime/Composer;I)J
    .locals 0

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget p0, Lcom/sightcall/graphik/R$color;->universal_consentTitleTextColor:I

    invoke-static {p1, p0}, Landroidx/compose/ui/res/ColorResources_androidKt;->a(Landroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    return-wide p0
.end method
