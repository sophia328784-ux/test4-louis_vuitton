.class public abstract Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$Keys;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keys"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$Keys;",
        "",
        "com.dynatrace.agent_release"
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
.field public static final a:Landroidx/datastore/preferences/core/Preferences$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "reason_crash"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$Keys;->a:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method
