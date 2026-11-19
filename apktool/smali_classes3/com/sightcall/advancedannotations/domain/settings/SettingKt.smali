.class public final Lcom/sightcall/advancedannotations/domain/settings/SettingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "pointerSetting",
        "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
        "getPointerSetting",
        "()Lcom/sightcall/advancedannotations/domain/settings/Setting;",
        "advancedannotations_release"
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
.field private static final pointerSetting:Lcom/sightcall/advancedannotations/domain/settings/Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sightcall/advancedannotations/domain/settings/Setting;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/16 v4, 0x64

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/advancedannotations/domain/settings/Setting;-><init>(Ljava/util/List;FFIILjava/lang/Long;)V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/settings/SettingKt;->pointerSetting:Lcom/sightcall/advancedannotations/domain/settings/Setting;

    return-void
.end method

.method public static final getPointerSetting()Lcom/sightcall/advancedannotations/domain/settings/Setting;
    .locals 1

    sget-object v0, Lcom/sightcall/advancedannotations/domain/settings/SettingKt;->pointerSetting:Lcom/sightcall/advancedannotations/domain/settings/Setting;

    return-object v0
.end method
