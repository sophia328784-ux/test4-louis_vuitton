.class public final synthetic Lkq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/window/OnTouchEventListener;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkq;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p0, p0, Lkq;->a:Landroid/view/View;

    sget-object v0, Lcom/dynatrace/android/agent/Core;->s:Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;

    invoke-interface {v0, p0, p1}, Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method
