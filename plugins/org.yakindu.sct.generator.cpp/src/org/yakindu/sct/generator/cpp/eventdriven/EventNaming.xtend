/**
 * Copyright (c) 2017 committers of YAKINDU and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     committers of YAKINDU - initial API and implementation
 */
package org.yakindu.sct.generator.cpp.eventdriven

import com.google.inject.Inject
import org.yakindu.base.types.Event
import org.yakindu.sct.generator.core.types.ICodegenTypeSystemAccess
import org.yakindu.sct.generator.cpp.Naming
import org.yakindu.sct.generator.cpp.Navigation
import org.yakindu.sct.generator.cpp.features.GenmodelEntriesExtension
import org.yakindu.sct.model.sexec.ExecutionFlow
import org.yakindu.sct.model.sexec.naming.INamingService
import org.yakindu.sct.model.sgen.GeneratorEntry
/**
 * @author René Beckmann - Initial contribution and API
 */
class EventNaming {
	@Inject extension Naming
	@Inject extension Navigation
	@Inject extension INamingService
	
	def eventEnumMemberName(Event it) {
		'''«scope.interfaceName»_«name.asIdentifier»'''
	}
	
	def eventEnumName(ExecutionFlow it) {
		'''«module»EventName'''
	}
	
	def timeEventEnumName() {
		'''TimeEvent'''
	}
	
	def eventClassName(Event it) {
		'''SctEvent_«scope.interfaceName»_«it.name.asIdentifier»'''
	}
	
	def eventNamespaceName(ExecutionFlow it) {
		'''«name.toLowerCase»_events'''
	}
}