<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:278b69d6-06fa-41c3-b585-49bf3afb0630(MoveNodeLang.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect" version="0" />
    <use id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring" version="0" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="9oh" ref="r:de82dfab-9448-49ba-813e-2b0579f7fb15(jetbrains.mps.ide.platform.actions)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="lfzw" ref="r:cc08a4fa-e4f1-443c-b8f2-4a41972141bb(jetbrains.mps.ide.platform.actions.core)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="90d" ref="r:421d64ed-8024-497f-aeab-8bddeb389dd2(jetbrains.mps.lang.extension.methods)" />
    <import index="54g5" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui.ex(MPS.IDEA/)" />
    <import index="l2m8" ref="r:b9a9a6f1-f7ec-4bf1-a5c0-1a8d8a41270d(MoveNodeLang.structure)" implicit="true" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="126958800891274162" name="jetbrains.mps.lang.extension.structure.Extension" flags="ig" index="1lYeZD">
        <reference id="126958800891274597" name="extensionPoint" index="1lYe$Y" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="3751132065236767083" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.DependentTypeInstance" flags="ig" index="q3mfm">
        <reference id="3751132065236767084" name="decl" index="q3mfh" />
        <reference id="9097849371505568270" name="point" index="1QQUv3" />
      </concept>
      <concept id="3751132065236767060" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance" flags="ig" index="q3mfD">
        <reference id="19209059688387895" name="decl" index="2VtyIY" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
    </language>
  </registry>
  <node concept="312cEu" id="1Ay2IrqPwW5">
    <property role="TrG5h" value="MoveServiceMethod" />
    <node concept="2tJIrI" id="1Ay2IrqPDVP" role="jymVt" />
    <node concept="1lYeZD" id="1Ay2IrqPJy9" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MoveServiceMethod_extension" />
      <ref role="1lYe$Y" to="lfzw:1F5g4zQqSPo" resolve="MoveNodesAction" />
      <node concept="3Tm1VV" id="1Ay2IrqPJya" role="1B3o_S" />
      <node concept="q3mfD" id="1Ay2IrqPJyg" role="jymVt">
        <property role="TrG5h" value="get" />
        <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
        <node concept="3Tm1VV" id="1Ay2IrqPJyi" role="1B3o_S" />
        <node concept="3clFbS" id="1Ay2IrqPJyk" role="3clF47">
          <node concept="3clFbF" id="1Ay2IrqPSdt" role="3cqZAp">
            <node concept="2ShNRf" id="1Ay2IrqPSdr" role="3clFbG">
              <node concept="HV5vD" id="1Ay2IrqQ06C" role="2ShVmc">
                <ref role="HV5vE" node="1Ay2IrqPwW5" resolve="MoveServiceMethod" />
              </node>
            </node>
          </node>
        </node>
        <node concept="q3mfm" id="1Ay2IrqPJyl" role="3clF45">
          <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
          <ref role="1QQUv3" node="1Ay2IrqPJyg" resolve="get" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Ay2IrqPJeZ" role="jymVt" />
    <node concept="3clFb_" id="1Ay2IrqPDWi" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="1Ay2IrqPDWk" role="1B3o_S" />
      <node concept="17QB3L" id="1Ay2IrqPDWl" role="3clF45" />
      <node concept="3clFbS" id="1Ay2IrqPDWm" role="3clF47">
        <node concept="3clFbF" id="1Ay2IrqPE6k" role="3cqZAp">
          <node concept="Xl_RD" id="1Ay2IrqPE6j" role="3clFbG">
            <property role="Xl_RC" value="Move Service Method" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1Ay2IrqPDWn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="37vLTG" id="1Ay2IrqPDWo" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1Ay2IrqPDWp" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="1Ay2IrqPDWq" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2I9FWS" id="1Ay2IrqPDWr" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="1Ay2IrqPDWs" role="3clF45" />
      <node concept="3Tm1VV" id="1Ay2IrqPDWt" role="1B3o_S" />
      <node concept="3clFbS" id="1Ay2IrqPDWv" role="3clF47">
        <node concept="3clFbF" id="1Ay2IrqPEVN" role="3cqZAp">
          <node concept="1Wc70l" id="1Ay2IrqPHfT" role="3clFbG">
            <node concept="2OqwBi" id="1Ay2IrqPIOU" role="3uHU7w">
              <node concept="2OqwBi" id="1Ay2IrqPH_E" role="2Oq$k0">
                <node concept="37vLTw" id="1Ay2IrqPHkW" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Ay2IrqPDWq" resolve="target" />
                </node>
                <node concept="1uHKPH" id="1Ay2IrqPIee" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="1Ay2IrqPIWT" role="2OqNvi">
                <node concept="chp4Y" id="1Ay2IrqPIZb" role="cj9EA">
                  <ref role="cht4Q" to="l2m8:5LdYCTr7g1u" resolve="ServiceMethodDeclaration" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1Ay2IrqPH3V" role="3uHU7B">
              <node concept="2OqwBi" id="1Ay2IrqPFbZ" role="3uHU7B">
                <node concept="37vLTw" id="1Ay2IrqPEVM" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Ay2IrqPDWq" resolve="target" />
                </node>
                <node concept="34oBXx" id="1Ay2IrqPGox" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="1Ay2IrqPH5O" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1Ay2IrqPDWy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1Ay2IrqPDWz" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1Ay2IrqPDW$" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="1Ay2IrqPDW_" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2I9FWS" id="1Ay2IrqPDWA" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1Ay2IrqPDWB" role="3clF45" />
      <node concept="3Tm1VV" id="1Ay2IrqPDWC" role="1B3o_S" />
      <node concept="3clFbS" id="1Ay2IrqPDWE" role="3clF47">
        <node concept="3clFbF" id="1Ay2IrqQaUB" role="3cqZAp">
          <node concept="2YIFZM" id="1Ay2IrqQbmH" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(com.intellij.openapi.project.Project,java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
            <ref role="1Pybhc" to="54g5:~MessagesEx" resolve="MessagesEx" />
            <node concept="2OqwBi" id="1Ay2IrqQbtz" role="37wK5m">
              <node concept="37vLTw" id="1Ay2IrqQbmI" role="2Oq$k0">
                <ref role="3cqZAo" node="1Ay2IrqPDWz" resolve="project" />
              </node>
              <node concept="liA8E" id="1Ay2IrqQbD1" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
              </node>
            </node>
            <node concept="Xl_RD" id="1Ay2IrqQbmK" role="37wK5m">
              <property role="Xl_RC" value="Action invoked successfully" />
            </node>
            <node concept="Xl_RD" id="1Ay2IrqQbmJ" role="37wK5m">
              <property role="Xl_RC" value="Move Service Method" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1Ay2IrqPJ5V" role="3cqZAp">
          <node concept="3SKdUq" id="1Ay2IrqPJ5W" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1Ay2IrqPwW6" role="1B3o_S" />
    <node concept="3uibUv" id="1Ay2IrqPwYn" role="EKbjA">
      <ref role="3uigEE" to="lfzw:1F5g4zQqSPt" resolve="MoveNodesRefactoring" />
    </node>
  </node>
</model>

