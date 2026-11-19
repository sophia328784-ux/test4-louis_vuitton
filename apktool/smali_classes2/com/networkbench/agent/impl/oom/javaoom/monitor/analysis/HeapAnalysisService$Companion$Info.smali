.class public interface abstract annotation Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0086\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info;",
        "",
        "Companion",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CURRENT_PAGE:Ljava/lang/String; = "CURRENT_PAGE"

.field public static final Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info$Companion;

.field public static final DEVICE_AVA_MEM:Ljava/lang/String; = "DEVICE_AVA_MEM"

.field public static final DEVICE_MAX_MEM:Ljava/lang/String; = "DEVICE_MAX_MEM"

.field public static final FD:Ljava/lang/String; = "FD"

.field public static final HPROF_FILE:Ljava/lang/String; = "HPROF_FILE"

.field public static final JAVA_MAX_MEM:Ljava/lang/String; = "JAVA_MAX_MEM"

.field public static final JAVA_USED_MEM:Ljava/lang/String; = "JAVA_USED_MEM"

.field public static final JSON_FILE:Ljava/lang/String; = "JSON_FILE"

.field public static final MANUFACTURE:Ljava/lang/String; = "MANUFACTURE"

.field public static final MODEL:Ljava/lang/String; = "MODEL"

.field public static final PSS:Ljava/lang/String; = "PSS"

.field public static final REASON:Ljava/lang/String; = "REASON"

.field public static final RESULT_RECEIVER:Ljava/lang/String; = "RESULT_RECEIVER"

.field public static final ROOT_PATH:Ljava/lang/String; = "ROOT_PATH"

.field public static final RSS:Ljava/lang/String; = "RSS"

.field public static final SDK:Ljava/lang/String; = "SDK"

.field public static final THREAD:Ljava/lang/String; = "THREAD"

.field public static final TIME:Ljava/lang/String; = "TIME"

.field public static final USAGE_TIME:Ljava/lang/String; = "USAGE_TIME"

.field public static final VSS:Ljava/lang/String; = "VSS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info$Companion;->$$INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info$Companion;

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info$Companion;

    return-void
.end method
