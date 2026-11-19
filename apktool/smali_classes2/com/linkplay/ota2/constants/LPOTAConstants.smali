.class public Lcom/linkplay/ota2/constants/LPOTAConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A118:Ljava/lang/String; = "A118"

.field private static final A98:Ljava/lang/String; = "A98"

.field private static final MCUA:Ljava/lang/String; = "MCUA"

.field private static final MCUB:Ljava/lang/String; = "MCUB"

.field public static final OTA_CONFIGURATION:Ljava/lang/String; = "{\n    \"Firmware\":{\n        \"A98\":{\n            \"Write\":49000,\n            \"Download\":125000,\n            \"Reboot\":57000\n        },\n        \"A118\":{\n            \"Write\":90000,\n            \"Download\":124000,\n            \"Reboot\":47000\n        }\n    },\n    \"MCU\":{\n        \"MCUA\":{\n            \"Write\":356000,\n            \"Download\":51000,\n            \"Reboot\":141000\n        },\n        \"MCUB\":{\n            \"Write\":52000,\n            \"Download\":12000,\n            \"Reboot\":58000\n        }\n    }\n}"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
