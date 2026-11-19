.class public Lcom/linkplay/lpmdpkit/bean/LPAlarmList$LPAlarmTrigger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/bean/LPAlarmList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LPAlarmTrigger"
.end annotation


# static fields
.field public static final LP_ALARM_TRIGGER_EVERYDAY:Ljava/lang/String; = "EveryDay"

.field public static final LP_ALARM_TRIGGER_EVERYWEEK:Ljava/lang/String; = "EveryWeek"

.field public static final LP_ALARM_TRIGGER_ONCE:Ljava/lang/String; = "Once"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
