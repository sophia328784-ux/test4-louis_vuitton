.class public abstract Lcom/vuitton/android/data/database/room/LVAppDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion;,
        Lcom/vuitton/android/data/database/room/LVAppDatabase$DeleteClubMigration;,
        Lcom/vuitton/android/data/database/room/LVAppDatabase$DeleteProfileMigration;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\'\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/data/database/room/LVAppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Companion",
        "DeleteClubMigration",
        "DeleteProfileMigration",
        "data"
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
.field public static final n:Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion;

.field public static o:Lcom/vuitton/android/data/database/room/LVAppDatabase;

.field public static final p:Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_1_2$1;

.field public static final q:Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_2_3$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/database/room/LVAppDatabase;->n:Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion;

    new-instance v0, Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_1_2$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    sput-object v0, Lcom/vuitton/android/data/database/room/LVAppDatabase;->p:Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_1_2$1;

    new-instance v0, Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_2_3$1;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    sput-object v0, Lcom/vuitton/android/data/database/room/LVAppDatabase;->q:Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_2_3$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract y()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;
.end method
