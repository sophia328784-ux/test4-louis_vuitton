.class public final enum Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/conf/ServerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

.field public static final enum ERROR:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

.field public static final enum OK:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->OK:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    new-instance v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->ERROR:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    filled-new-array {v0, v1}, [Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->$VALUES:[Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;
    .locals 1

    const-class v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->$VALUES:[Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    invoke-virtual {v0}, [Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    return-object v0
.end method
