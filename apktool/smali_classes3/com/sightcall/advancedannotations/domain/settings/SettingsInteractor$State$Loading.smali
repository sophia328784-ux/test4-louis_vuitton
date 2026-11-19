.class public final Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;
.super Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loading"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;",
        "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;",
        "<init>",
        "()V",
        "advancedannotations_release"
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
.field public static final INSTANCE:Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;

    invoke-direct {v0}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;-><init>()V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;->INSTANCE:Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
