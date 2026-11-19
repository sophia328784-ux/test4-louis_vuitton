.class public final enum Lcom/dynatrace/android/agent/crash/PlatformType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/agent/crash/PlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/agent/crash/PlatformType;

.field public static final enum CUSTOM:Lcom/dynatrace/android/agent/crash/PlatformType;

.field public static final enum DART:Lcom/dynatrace/android/agent/crash/PlatformType;

.field public static final enum JAVA:Lcom/dynatrace/android/agent/crash/PlatformType;

.field public static final enum JAVA_SCRIPT:Lcom/dynatrace/android/agent/crash/PlatformType;

.field public static final enum XAMARIN:Lcom/dynatrace/android/agent/crash/PlatformType;


# instance fields
.field private final protocolValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dynatrace/android/agent/crash/PlatformType;

    const/4 v1, 0x0

    const-string v2, "a"

    const-string v3, "JAVA"

    invoke-direct {v0, v3, v1, v2}, Lcom/dynatrace/android/agent/crash/PlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dynatrace/android/agent/crash/PlatformType;->JAVA:Lcom/dynatrace/android/agent/crash/PlatformType;

    new-instance v1, Lcom/dynatrace/android/agent/crash/PlatformType;

    const/4 v2, 0x1

    const-string v3, "j"

    const-string v4, "JAVA_SCRIPT"

    invoke-direct {v1, v4, v2, v3}, Lcom/dynatrace/android/agent/crash/PlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dynatrace/android/agent/crash/PlatformType;->JAVA_SCRIPT:Lcom/dynatrace/android/agent/crash/PlatformType;

    new-instance v2, Lcom/dynatrace/android/agent/crash/PlatformType;

    const/4 v3, 0x2

    const-string v4, "x"

    const-string v5, "XAMARIN"

    invoke-direct {v2, v5, v3, v4}, Lcom/dynatrace/android/agent/crash/PlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/dynatrace/android/agent/crash/PlatformType;->XAMARIN:Lcom/dynatrace/android/agent/crash/PlatformType;

    new-instance v3, Lcom/dynatrace/android/agent/crash/PlatformType;

    const/4 v4, 0x3

    const-string v5, "d"

    const-string v6, "DART"

    invoke-direct {v3, v6, v4, v5}, Lcom/dynatrace/android/agent/crash/PlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dynatrace/android/agent/crash/PlatformType;->DART:Lcom/dynatrace/android/agent/crash/PlatformType;

    new-instance v4, Lcom/dynatrace/android/agent/crash/PlatformType;

    const/4 v5, 0x4

    const-string v6, "c"

    const-string v7, "CUSTOM"

    invoke-direct {v4, v7, v5, v6}, Lcom/dynatrace/android/agent/crash/PlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/dynatrace/android/agent/crash/PlatformType;->CUSTOM:Lcom/dynatrace/android/agent/crash/PlatformType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dynatrace/android/agent/crash/PlatformType;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/crash/PlatformType;->$VALUES:[Lcom/dynatrace/android/agent/crash/PlatformType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dynatrace/android/agent/crash/PlatformType;->protocolValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/crash/PlatformType;
    .locals 1

    const-class v0, Lcom/dynatrace/android/agent/crash/PlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/crash/PlatformType;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/agent/crash/PlatformType;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/crash/PlatformType;->$VALUES:[Lcom/dynatrace/android/agent/crash/PlatformType;

    invoke-virtual {v0}, [Lcom/dynatrace/android/agent/crash/PlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/agent/crash/PlatformType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/crash/PlatformType;->protocolValue:Ljava/lang/String;

    return-object p0
.end method
